<div align="center">

# Awakened PoE Trade — FunPay prices

**Path of Exile price checker with a FunPay price column**

[![Download](https://img.shields.io/badge/Download-Releases-2ea44f?style=for-the-badge&logo=github)](../../releases/latest)
[![Support](https://img.shields.io/badge/Support-DonationAlerts-F57507?style=for-the-badge)](https://www.donationalerts.com/r/parovoz24)

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows&logoColor=white)
![Path of Exile](https://img.shields.io/badge/Path%20of%20Exile-1-AF6025)
![License: MIT](https://img.shields.io/badge/License-MIT-blue)

<br>

<img src="docs/screenshot.png" alt="FunPay price column in the price checker" width="420">

</div>

---

A build of the popular price checker [Awakened PoE Trade](https://github.com/SnosMe/awakened-poe-trade)
with one important addition: next to every divine / chaos / mirror price it shows
**what that is worth on [FunPay](https://funpay.com/chips/173/)** at the current rate.

Everything else works exactly like the original: same hotkeys, settings and interface.

## Features

| | |
|---|---|
| 💰 **FunPay price column** | in the listings table and in bulk exchange, styled like the other columns |
| 📈 **Live FunPay rate** | median of the 5 cheapest Divine Orb lots in your league, refreshed every 30 minutes |
| ⚖️ **Chaos via divine** | chaos rate = divine rate ÷ div/chaos ratio (poe.ninja), so chaos and divine prices always agree |
| 🪞 **Mirror of Kalandra** | converted through divines: mirror → div (poe.ninja) × div rate (FunPay) |
| 🎯 **League selection** | automatic from the price checker league, or pick any league from the FunPay list |
| 🔗 **FunPay button** | next to the Trade button, opens the FunPay Divine Orb page |
| ℹ️ **Rate tooltip** | hover the column header: league, rate for 1 div / chaos / mirror, how many divines are on sale at that rate, last update time |
| 💸 **Your price and fees** | your price = rate ± N%, plus a **Net** column — what you receive after the FunPay fee (the number you enter in the lot form) |
| 📋 **Click to copy** | click any price to copy it, then paste it straight into a FunPay lot |
| 📦 **Stack value** | under the poe.ninja price: FunPay value per item and for the whole stack |
| 🌍 **₽ / $ / €** | choose the currency of the column |
| 🔄 **Refresh rate** | click the column header to refresh the rate instantly |

## Installation

1. Download the archive from [**Releases**](../../releases/latest) and unpack it anywhere.
2. Close the regular Awakened PoE Trade if it is running.
3. Run **`Awakened PoE Trade (RUB).exe`**.

> [!NOTE]
> The app is not signed with a paid certificate, so Windows may show
> "Windows protected your PC". Click **More info → Run anyway**.

The app is portable — no installation needed. If you already used Awakened PoE Trade,
your settings and hotkeys are kept.

## Settings

**Settings → Price check:**

- **Show price in real money** — turn the column on / off.
- **FunPay league** — `Auto` (same as the price checker league) or a specific league from the list.
  If the column does not appear after a new league starts, pick the league manually.
- **Currency** — rubles, dollars or euros.
- **My price relative to the rate** — e.g. `-5` to undercut and appear at the top of the FunPay list.
- **FunPay buyer markup** — 21.18% by default (you sell for 100, the buyer sees 121.18).
  FunPay shows buyer prices, so the **Net** column = price ÷ 1.2118.
  Enter the **Net** value in the FunPay lot form — buyers will see the price from the main column.
- **Refresh rate now** — without waiting 30 minutes.

## How the price is calculated

```
1. The app loads the FunPay "Divine Orbs" page
2. Keeps only lots of your league (PC)
3. Takes the 5 cheapest (online sellers only, if there are at least 3) → median = divine rate
4. Chaos and Mirror are converted through divines using the poe.ninja ratio
5. Item price × rate = FunPay price

   For example:
   15 divine  × 1.25 ₽               = 18.75 ₽
  300 chaos   × (1.25 ₽ ÷ 388 chaos) =  0.97 ₽
    2 mirror  × 450 div × 1.25 ₽     = 1 125 ₽
```

Chaos Orbs on FunPay are sold in small amounts at scattered prices, so their rate is not taken
from the chaos page but derived from the divine rate — 300 chaos will never look "more expensive" than 2 divine.

This is the price currency is **sold** for on FunPay. When selling your own currency,
you usually receive less after the fee.

## Support the project

If this build is useful to you, you can support the author 🧡

<a href="https://www.donationalerts.com/r/parovoz24"><img src="https://img.shields.io/badge/DonationAlerts-parovoz24-F57507?style=for-the-badge" alt="Support on DonationAlerts"></a>

## Credits and license

- Original app — [Awakened PoE Trade](https://github.com/SnosMe/awakened-poe-trade)
  by Alexander Drozdov (SnosMe), MIT license.
- FunPay price changes — parovoz24, same [MIT](LICENSE) license.

This project is not affiliated with Grinding Gear Games, FunPay or the author of the original Awakened PoE Trade.
