AWAKENED POE TRADE + FUNPAY PRICES
==================================

Russian version below / Русская версия — ниже.

This is an unofficial build of Awakened PoE Trade (price checker for Path of Exile)
with an extra FunPay price column: next to every divine / chaos / mirror price
it shows what that is worth on FunPay at the current rate.

Original app: https://github.com/SnosMe/awakened-poe-trade
This build:   https://github.com/parovoz24/awakened-poe-trade-by-parovoz24


HOW TO RUN
----------
1. If the regular Awakened PoE Trade is running, close it
   (tray icon next to the clock -> right click -> Quit).
2. Run "Awakened PoE Trade (RUB).exe".
   The first start may take 10-20 seconds - that is normal.
3. If Windows shows a blue "Windows protected your PC" window,
   click "More info" -> "Run anyway".
   (The app is not signed with a paid certificate, so Windows does not know it.)
4. Then use it like the regular Awakened PoE Trade: Ctrl+D on an item in game.

The app is portable - no installation needed, put it in any folder.
If you already used Awakened PoE Trade, your settings and hotkeys are kept.


FUNPAY PRICE COLUMN
-------------------
- The rate is taken from FunPay: median of the 5 cheapest Divine Orb lots
  in your league (online sellers only, if there are at least 3 of them).
- Chaos is converted through divine: divine rate / chaos per divine (poe.ninja).
  This way chaos and divine prices always agree.
- Mirror is converted the same way: divines per Mirror of Kalandra (poe.ninja)
  x FunPay divine rate.
- The rate is refreshed every 30 minutes while you use the price checker.
- On the first price check the rate loads for a couple of seconds - if the column
  is missing, check the item again.
- Hover the column header to see the FunPay league, the rates, how many divines
  are on sale at that rate and when the rate was updated.
- The "FunPay" button next to "Trade" opens the FunPay Divine Orb page.
- Click a price to copy it - paste it straight into a FunPay lot.
- Click the column header to refresh the rate right now.
- Under the poe.ninja price you see the FunPay value per item and for the whole stack.


SETTINGS
--------
Settings -> Price check:
- "Show price in real money" - turn the column on / off.
- "FunPay league":
    "Auto" (default) - the league follows the price checker league.
    If the column is missing in a new league or the rate looks wrong,
    pick the league from the list manually ("Refresh" reloads the list).
    Remember to switch back to "Auto" or pick the new league when it changes.
- "Currency" - rubles, dollars or euros.
- "My price relative to the rate" - e.g. -5 to undercut and appear at the top on FunPay.
- "FunPay buyer markup" - 21.18% by default (you sell for 100, the buyer sees 121.18).
  The "Net" column = price / 1.2118 - enter this number in the FunPay lot form,
  and buyers will see the price from the main column.
- "Refresh rate now" - without waiting 30 minutes.


UPDATES
-------
This build does NOT update itself (an official update would remove the column).
New versions are on the project page on GitHub, in Releases.


SUPPORT THE AUTHOR
------------------
If this build is useful: https://www.donationalerts.com/r/parovoz24


LICENSE
-------
Awakened PoE Trade is distributed under the MIT license (LICENSE.txt).
Author of the original app - Alexander Drozdov (SnosMe).
The FunPay price column is an unofficial addition by parovoz24;
the original author is not related to it.

========================================================================
  РУССКАЯ ВЕРСИЯ
========================================================================

AWAKENED POE TRADE + ЦЕНЫ В РУБЛЯХ (FunPay)
===========================================

Это неофициальная сборка программы Awakened PoE Trade (прайсчекер для Path of Exile)
с дополнительной колонкой «Рубли»: рядом с ценой в divine / chaos показывается,
сколько это стоит в рублях по текущему курсу с сайта FunPay.

Оригинальная программа: https://github.com/SnosMe/awakened-poe-trade


КАК ЗАПУСТИТЬ
-------------
1. Если у вас запущен обычный Awakened PoE Trade — закройте его
   (значок у часов -> правой кнопкой -> выход).
2. Запустите «Awakened PoE Trade (RUB).exe».
   Первый запуск может занять 10-20 секунд — это нормально.
3. Если Windows покажет синее окно «Система Windows защитила ваш компьютер»,
   нажмите «Подробнее» -> «Выполнить в любом случае».
   (Программа не подписана платным сертификатом, поэтому Windows её не знает.)
4. Дальше всё как в обычном Awakened PoE Trade: Ctrl+D на предмете в игре.

Программа портативная — устанавливать не нужно, её можно положить в любую папку.
Если у вас уже был Awakened PoE Trade, ваши настройки и горячие клавиши сохранятся.


КОЛОНКА «РУБЛИ»
---------------
- Курс берётся с FunPay: медиана 5 самых дешёвых лотов Divine Orb
  вашей лиги (если онлайн хотя бы 3 продавца — только среди онлайн-продавцов).
- Chaos считается через дивайн: курс дивайна / сколько хаосов в дивайне (poe.ninja).
  Так цены в chaos и divine всегда согласованы.
- Курс обновляется раз в 30 минут, пока вы пользуетесь прайсчекером.
- При первой проверке цены курс загружается пару секунд — если колонки нет,
  проверьте предмет ещё раз.
- Наведите мышку на заголовок «Рубли» — там видно лигу FunPay и курс
  за 1 div и 1 chaos.
- Пересчитываются цены в divine, chaos и mirror.
  Mirror считается через дивайны: сколько дивайнов стоит 1 Mirror of Kalandra
  (по poe.ninja) x курс дивайна на FunPay.
- Кнопка «FunPay» рядом с кнопкой «Trade» открывает в браузере
  страницу дивайнов на FunPay.
- Клик по цене в рублях копирует сумму — сразу вставляйте в лот на FunPay.
- Клик по заголовку «Рубли» — обновить курс прямо сейчас.
- Под ценой poe.ninja показана цена в рублях за штуку и за весь стак.


НАСТРОЙКИ
---------
Настройки -> Прайс-чек:
- «Показывать цену в рублях по курсу» — включить / выключить колонку.
- «Лига на FunPay»:
    «Авто» (по умолчанию) — лига подбирается по лиге прайсчекера.
    Если в новой лиге колонка не появилась или курс странный —
    выберите нужную лигу из списка вручную (кнопка «Обновить» перезагружает список).
    Не забудьте вернуть «Авто» или выбрать новую лигу, когда она сменится.
- «Валюта» — рубли, доллары или евро.
- «Моя цена относительно курса» — например -5, чтобы встать в начало списка на FunPay.
- «Наценка FunPay для покупателя» — по умолчанию 21.18% (продаёте за 100 ₽ —
  покупатель видит 121.18 ₽). Колонка «На руки» = цена / 1.2118 — это число
  вводится в форму лота на FunPay, а покупатель увидит цену из колонки «Рубли».
- «Обновить курс сейчас» — без ожидания 30 минут.


ОБНОВЛЕНИЯ
----------
Эта сборка НЕ обновляется сама (иначе официальное обновление убрало бы колонку).
Новые версии — на странице проекта на GitHub, в разделе Releases.


ПОДДЕРЖАТЬ АВТОРА
-----------------
Если сборка пригодилась: https://www.donationalerts.com/r/parovoz24


ЛИЦЕНЗИЯ
--------
Awakened PoE Trade распространяется по лицензии MIT (файл LICENSE.txt).
Автор оригинальной программы — Alexander Drozdov (SnosMe).
Колонка с рублями — неофициальное дополнение от parovoz24;
автор оригинала к нему отношения не имеет.
