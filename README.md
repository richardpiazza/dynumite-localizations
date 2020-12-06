# dynumite-localizations

![Swift](https://github.com/richardpiazza/dynumite-localizations/workflows/Swift/badge.svg?branch=main)

Localizations for the macOS app **Dynumite**.

A community effort (ala [Steven Troughton-Smiths Broadcasts](https://github.com/steventroughtonsmith/broadcasts-localization)) to provide 
and improve localizations for **Dynumite**.

## Disk Structure

Languages are structured in folders as such:

`en.lproj/Localizable.strings`

Where en is replaced by the ISO 639-1 two-letter language code, and the Localizable.strings file is structured as per the English (en) version.

Please do not include any other files in a pull request.

## Localization

Strings are denoted as "KEY" = "value", where the keys remain the same across all languages, and the values are localized. There must be a
";" at the end of each line.

`"ABOUT" = "About Dynumite";`

## Credits

Feel free to use your name/handle/link in the comment block at the top of the Localizable.strings file. You deserve some credit!
