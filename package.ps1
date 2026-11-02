# Packs the built program into a release folder + .zip on the Desktop.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$work = Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'APT-RUB'
$desktop = [Environment]::GetFolderPath('Desktop')
$name = 'awakened poe trade by parovoz24'
$out = Join-Path $desktop $name
$zip = Join-Path $desktop "$name.zip"

try {
  $exe = Join-Path $desktop 'Awakened PoE Trade (RUB).exe'
  if (-not (Test-Path $exe)) {
    $built = Get-ChildItem (Join-Path $work 'awakened-poe-trade\main\dist') -Filter '*.exe' -ErrorAction SilentlyContinue |
      Sort-Object LastWriteTime -Descending | Select-Object -First 1
    if (-not $built) { throw 'Не найден готовый .exe. Сначала запустите build.cmd' }
    $exe = $built.FullName
  }

  Write-Host 'Создаю папку...'
  if (Test-Path $out) { Remove-Item $out -Recurse -Force }
  New-Item -ItemType Directory -Path $out -Force | Out-Null
  Copy-Item $exe (Join-Path $out 'Awakened PoE Trade (RUB).exe')
  Copy-Item (Join-Path $root 'docs\release-readme.txt') (Join-Path $out 'ПРОЧТИ МЕНЯ.txt')
  Copy-Item (Join-Path $root 'LICENSE') (Join-Path $out 'LICENSE.txt')

  Write-Host 'Упаковываю в zip (около минуты)...'
  if (Test-Path $zip) { Remove-Item $zip -Force }
  Compress-Archive -Path $out -DestinationPath $zip -CompressionLevel Optimal

  $size = [math]::Round((Get-Item $zip).Length / 1MB)
  Write-Host ''
  Write-Host 'ГОТОВО:' -ForegroundColor Green
  Write-Host "  папка:  $out"
  Write-Host "  архив:  $zip  ($size МБ)"
} catch {
  Write-Host "ОШИБКА: $_" -ForegroundColor Red
}
