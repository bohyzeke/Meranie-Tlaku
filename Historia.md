2019.01.08 v 1.1.11

    Pridanie policok na skrytie vykreslovanych kriviek pre jednotlive grafy
    Pridanie policok aj do ini suboru
    Opavene padanie Aplikacie pri nacitani kratkeho grafu pod 500 zaznamov
       
    

2018.4.12  v 1.1.10

    Pridanie zobrazenia nameraných hodnot podla pozicie mysky pod legendu grafu
    odladovanie programu
    
2017.10.20

    Oprava zatvarania okna options
    uprava zobrazenia online grafu a prepoctu hodnoty na bary
    doplnenie TCPLC o generovanie pily a sinusoidy
    
2017.10.17

    dokoncenie sekcie ochrany programu a registracie programu
    
2017.10.15

    Register na kluce
    HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Presure Log\Application

2017.10.14

    Nove Cpu a karta. V PLC je novsia verzia TwinCat 2.11.22343 co prinieslo nekompatibilitu so staršou verziou 
    Upgrade PLC programu a instalacia noveho TC do PC
    pokus o rozbehanie plc programu na novom PLC CX1020   	     

2017.10.13

    uprava kodu na generoanie klucaA. Rozbehnutie aplikaccie pod windows7.

2017.8.15   Verzia 1.0.8

    Oprava chyby načítania súboru z viac ako 32000 záznamami.

* Test verzie 1.0.8
    - Testovane na CX1021 Twincat aj VB.exe
    - Čidla nepripojené
    - sledovaný šum na 4 -och analógových vstupoch
* parametre testu :

| Parameter    | Hodnota     |
| :------------- | :------------- |
| Začiatok záznamu | 2017.8.15_23:31:24 |
| Dĺžka na súbor   | 10 000 zaznamov    |
| Timer1           | 1000               |
| Timer2           | 100                |
| Kel timer        | 10                 |
| Koniec testu     | 2017.8.16_         |


* Výsledok testu
  - Počet súborov 	: 1  
  - Veľkosť súborov	: 1Mb

pocas zaznamu som preklikol zopar applikacii beziacich na monitorovacom CX1020 a monitorovanie sa zastavilo z coho vypliva ze aplikacia nie je dostatocne odladena aby bezala na pozadi

Poznamka JB: pri grafe chybaju aktualne casy zobrazovaneho grafu.
Na zaznamovom stroji treba skopirovat a nahrat nasledovne subory a zaregistrovat aby applikacia spravne bezala:

    Open the Run shell (Start -->Run...);  type Regsvr32 <path to adsocx.ocx>\adsocx.ocx; Enter
    Open the Run shell (Start -->Run...);  type Regsvr32 C:\TwinCAT\ADS Api\TcAdsDll\TcAdsDll.dll; Enter

2017.8.14

    oprava chyby chýbajúceho adresára pre záznamy.

2017.8.12   beta1.0.7

    Upratanie kódu a pridanie komentárov . Úprava otvárania súboru. Pridanie zavretie offline grafu.

2017.8.10   Verzia1.0.6a

    Odlaďovanie funkcii grafu , menu , toolbar.. Poslovenčenie všetkých tlačidiel    

2017.8.9

    BAUR
    
2017.8.7   beta 1.0.6

    Odlaďovanie funkcií grafu

 2017.8.6   beta 1.0.5

    Programovanie funkcie načítania uložených údajov. Odlaďovanie stávajúcich funkcii a úprava Toolbaru.
    Doplnenie ikon a priradenie funkcii tlačidlám. 
    Úprava formulára O programe upravenie doplňujúcich informácií

2017.8.2   Verzia 1.0.4a

    Dokončenie Grafu aby zobrazoval všetky krivky a pridanie novej funkcie na zmenu farby pre jednotlive krivky.
    Zobrazenie farby krivky. Chyba legenda s aktuálnym údajom (hodnota čidla)

2017.8 1   beta 1.0.4

    Pridanie online grafu a implementácia do programu zatiaľ neodladené iba zobrazuje sinusoidu. 
    Pridanie ďalšieho časovača pre vykresľovanie grafu. 
    Plánovanie funkcie pre zmenu farby a rozsahu zobrazenie aktuálnych hodnôt

2017.7.31	beta 1.0.3

    Dopisanie Aplikacneho dennika a oprava poskodenych funkcii z posledneho dna 2017.7.30

2017.7.30  beta 1.0.2

    Vytvorenie funkcie na zapis casu a nameranych hodnot do TXT suboru. 
    Jednotlive udaje su oddelene znakom '|'. Postupnost ukladanych udajov.
    "Datum_CAS_mS|Snimac1|Snimac2|Snimac3|Snimac4|Snimac5|Snimac6|Snimac7|Snimac8"

2017.7.29   beta 1.0.1

    Vytvorenie Funkcie na ziskanie aktualneho casu zo systemu Windows. 
    Vytvorenie Pola pre namerane hodnoty a spojenie nameranych udajov a casu. 
    Uprava nastaveni a vytvorenie funkcie na ukladanie nastaveni do INI suboru.
    Vytvorenie funkcie pre nacitavanie INI suboru po starte programu.
    Vytvorenie Menu pre Program. Doplnenie programu o formular About. A jeho uprava.

2017.7.28	  beta 1.0.0

    Definicia poziadaviek a vyber zakladneho PLC systemu.
    Zaroven vyber vyzualizacie a programovacieho prostredia, pre zapis udajov a grafickeho zobrazenia nameranych udajov. 
    Zoznamenie sa s protokolom ADS. Vytvorenie prveho zakladneho spojenia TC_ADS a VisualBasic6.
    Vytvorenie zakladneho formulara a  formulara na Nastavenie cidiel a komunikacie ADS.













