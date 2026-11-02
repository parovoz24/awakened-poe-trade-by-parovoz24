# Builds Awakened PoE Trade with the FunPay RUB price column.
# Result: "Awakened PoE Trade (RUB).exe" on the Desktop (portable, no auto-updates).
# Work files (sources, node_modules, log) go to Documents\APT-RUB, outside the repository.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
$patch = Join-Path $root 'patch\funpay-rub-column.patch'
$base = Join-Path ([Environment]::GetFolderPath('MyDocuments')) 'APT-RUB'
New-Item -ItemType Directory -Path $base -Force | Out-Null
$log = Join-Path $base 'build-log.txt'
Start-Transcript -Path $log -Force | Out-Null

function Refresh-Path {
  $env:Path = [Environment]::GetEnvironmentVariable('Path', 'Machine') + ';' + [Environment]::GetEnvironmentVariable('Path', 'User')
}
function Step($msg) { Write-Host "`n===== $msg =====" -ForegroundColor Cyan }
function Check($what) { if ($LASTEXITCODE -ne 0) { throw "$what failed (exit code $LASTEXITCODE)" } }

try {
  Step 'Checking Node.js and Git'
  Refresh-Path
  # ComSpec on this PC may point to a wrong place (e.g. C:\ffmpeg\bin); npm needs cmd.exe
  $env:ComSpec = Join-Path $env:SystemRoot 'System32\cmd.exe'
  $env:npm_config_script_shell = $env:ComSpec
  Write-Host "ComSpec = $env:ComSpec"
  if (-not (Get-Command node -ErrorAction SilentlyContinue)) {
    Write-Host 'Installing Node.js LTS...'
    winget install -e --id OpenJS.NodeJS.LTS --silent --accept-source-agreements --accept-package-agreements
    Refresh-Path
  }
  if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host 'Installing Git...'
    winget install -e --id Git.Git --silent --accept-source-agreements --accept-package-agreements
    Refresh-Path
  }
  node -v; Check 'node'
  git --version; Check 'git'

  Step 'Downloading Awakened PoE Trade source'
  $repo = Join-Path $base 'awakened-poe-trade'
  if (-not (Test-Path (Join-Path $repo '.git'))) {
    git clone --config core.autocrlf=false https://github.com/SnosMe/awakened-poe-trade.git $repo; Check 'git clone'
  }
  Set-Location $repo
  git config core.autocrlf false
  git fetch origin; Check 'git fetch'
  git checkout -f -B funpay-rub-column 3188208; Check 'git checkout'
  git clean -fdx -e node_modules; Check 'git clean'

  Step 'Applying FunPay RUB patch'
  git apply --whitespace=nowarn $patch; Check 'git apply'

  Step 'Building renderer (UI)'
  Set-Location (Join-Path $repo 'renderer')
  npm ci --no-audit --no-fund; Check 'renderer npm ci'
  npm run build; Check 'renderer build'

  Step 'Building main (Electron)'
  Set-Location (Join-Path $repo 'main')
  npm ci --no-audit --no-fund; Check 'main npm ci'
  npm run build; Check 'main build'
  npx electron-builder build --win portable --publish never; Check 'electron-builder'

  Step 'Copying result to Desktop'
  $exe = Get-ChildItem (Join-Path $repo 'main\dist') -Filter '*.exe' | Sort-Object LastWriteTime -Descending | Select-Object -First 1
  if (-not $exe) { throw 'Built .exe not found' }
  $desktop = [Environment]::GetFolderPath('Desktop')
  $target = Join-Path $desktop 'Awakened PoE Trade (RUB).exe'
  Copy-Item $exe.FullName $target -Force
  Write-Host "`nBUILD-OK: $target" -ForegroundColor Green
} catch {
  Write-Host "`nBUILD-FAILED: $_" -ForegroundColor Red
} finally {
  Stop-Transcript | Out-Null
}
