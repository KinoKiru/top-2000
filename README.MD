# Project Top2000

---

## **Creators**

- Youri Bakker
- Niels Rolleman
- Youri Blanckenborg

---

## **MoSCoW**

### Must

- [ ] Position of song.
- [ ] Name of artist.
- [ ] Song title.
- [ ] Release date of song.
- [ ] Filter list on year.

### Should

- [ ] Song image.
- [ ] Filter list on name of artist.
- [ ] Artist info on click (seprate page).
- [ ] Import excel sheet for new data.

### Could

- [ ] Show change of position from selected and last year.
- [ ] Sort list on given data.
- [ ] Show extra data of song (like lyrics).
- [ ] Play preview of song.

### Won't

- [ ] Cannot play full songs. (copyright reasons)
- [ ] Program cannot add data manualy.

---

## **Programma van eisen**


### **Inleiding**
    Hier kun je alles lezen over ons programma van eisen.

### **Het bedrijf**
    De radio zender NPO Radio 2 zend elk jaar de TOP2000 uit als evenement. Verder zenden ze ook elke dag normale radio uit. 

### **Probleemstelling**
    Een mobiele app + website moet gerealiseerd worden in combinatie met een API en database. De beheerders moeten de mogelijkheid hebben om een Excel sheet te importeren. Er moet zowel gezocht en gefilterd worden op liedjes en artiesten.

### **Doelgroep**
    ![Doelgroep](https://media.discordapp.net/attachments/1061934768440234034/1064897493869023232/top20002.png)
### **Lettertype**
    Roboto, 14-16px mobile, 16-24px desktop

### **Huiskleur**
    Dark mode:
        Primary: #BB86FC
        Primary variant: #3700b3 
        Secondary: #03DAC6
        Bakground: #303030
        Surface: #303030
        Error: #CF6679
        On Primary: #121212
        On Secondary: #121212
        on Background: #FFFFFF
        On Surface: #FFFFFF
        On Error: #000000
        Text: #FFFFFFF
    White mode:
        Primary: #6200EE
        Primary variant: #3700B3
        Secondary: #03DAC6
        Secondary variant: #018786
        Bakground: #FFFFFF
        Surface: #FFFFFF
        Error: #B00020
        On Primary: #FFFFFF
        On Secondary: #000000
        on Background: #000000
        On Surface: #000000
        On Error: #FFFFFF
        Text: #000000

        
### **Layout schets**
    ____
    |__|
---

## **Flutter packages**

- [Jiffy](https://pub.dev/packages/jiffy)
- [Persistent Bottom Navigation Bar](https://pub.dev/packages/persistent_bottom_nav_bar)
- [Iconify](https://pub.dev/packages/iconify_flutter/install)
- [fluro](https://pub.dev/packages/fluro)
- [freezed](https://pub.dev/packages/freezed)
- [flutter_lints](https://pub.dev/packages/flutter_lints)

---

## **Code Conventions**

> #### SQL
>
> - Usage of asp forces camel casing.
> - Don't use long column names keep it simple!
> - Stored procedures needs to be used!
> - Table names & column names uses snake_case convention

> #### C# (mvc)
>
> - Variables should be camelCased.
> - Private variables start with lowerscore
> - Functions, Classes, Files and Properties uses PascalCasing.
> - Key names of passed data by API should be in camelCasing.
> - Variables should be properly typed, so avoid `var` as much as possible.
> - Keep your code DRY(do not repeat yourself), So when something is used more than once make it a util.
> - Use Sandcastle for documentation and document well.

> #### Flutter
>
> - Files should be snake_case
> - Keep components as agile as possible.
> - App needs to be responsive.
> - Functions, Classes, Properties should be PascalCase
> - Variables should be camelCase and private starts with lowerscore
> - Variables should be properly typed, so avoid `var` as much as possible.
> - Document big functions and components

> #### Javascript
>
> - Do not use `var` only use `let and const`
> - use `===` instead of `==` for it is better suited.
> - Variables and Functions is camelCase.
> - Classes, Properties are PascalCase.
> - Files are camel cased.
> - Document big functions.

> #### HTML
>
> - Use correct [elements](https://www.w3schools.com/tags/ref_byfunc.asp) for their purpose.
> - Keep tab indents for better readability.
> - Keep code DRY(do not repeat yourself).

---
