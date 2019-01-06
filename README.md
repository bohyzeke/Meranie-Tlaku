### Meranie-Tlaku

#### DEFINICIA MERANIA A ZAKLADNE NAVRHNUTIE SYSTEMU

Zakladaný návrhom je merať priebehy hydraulického tlaku pomocou meracieho zariadenia s nasledovnými požiadavkami

##### Základne údaje pre zariadenie :


merať Hydraulicky tlak na minimálne 6-ich meracích bodoch
zobrazovať aktuálne namerané hodnoty
zaznamenávanie nameraných hodnôt v reálnom čase
dĺžka záznamu údajov čo najdlhšia (zakladny pozadovany cas je 24Hodin)
vzorkovacia frekvencia musi byt cca 10 milisekund a menej
Meranie bude predvádzane jednoduchými meracimi cidlami s vystupom 4-20mA. Ktore budu pripojene na Hydraulicky System (HS ) stroja. Na pripojenie sa predpoklada volne pristupne miesto s minimeskou . Predpokladana dlzka pripojenia meracich kablov k meracim bodom HS je cca 5–15metrov. Spojitost merania bude zabezpecena vzorkovanim

##### Vyber vhodneho systemu pre meranie (cpu)

Pre vyber zakladneho systemu pre cpu mam k dispozicii:

  * Siemens (S7)
  * Beckhoff (TwinCAT)
  * Omron
  * BAR

  Z ponúknutých možností bude asi najlepšie použiť Beckhoff a jeho CP.
Siemens a Omron neposkytujú dostatočnú rýchlosť skenovania vstupov
BAR nemám skúsenosti s programovaním tohto systému

  Program a jeho obsluha bude cez ovladaci panel alebo myskou a klavesnicou zalezi na dalsom vybere hardveru. Doposial vybrany hardware
  - CPU CX1020
  - Zdroj CX1100
  - Vstupne jednotky EL1014
  - Ukoncovaci blok EL9010
  - Monitor, klavesnica a mys obycajna PC

  io Jednotky pre ucely simulácie prvotného programovania:


  - Analógový vstup EL3102
  - Analógový výstup EL4132

  Vybraný software pre aplikáciu:


  - TwinCAT PLC fungujúci na Windows xp
  - Pre vizualizáciu a zapisovanie údajov bude použitý program napísaný v prostredí  VisualBasic6, bežiaci bud priamo na CX1020 alebo na externom PC alebo Laptope prepojeným s Riadiacim systémom LAN káblom . Zápis údajov bude do textového súboru, poprípade databazy .


##### ZAKLADNE MERANIE POMOCUO CPU

  Program a jeho obsluha bude cez ovládací panel , myškou alebo klávesnicou. Záleží na ďalšom výbere hardvéru.
   SYSTEM TwinCAT bude pre účely programovania a odlaďovania využívať dve CPU jedno CPU bude riadiť naše zariadenie a druhe CPU bude simulovať samotný meraný stroj generovaním náhodných priebehov. Po dokončení CPU Merania bude CPU2 odstránené z projektu.

##### VYTVORENIE PROGRAMU SIMULACIE

  Simulácia bude obsahovať minimum vstupov pre nastavenie a zároveň minimum výstupov pre riadenie

  Základne vstupne polia

  - začiatok
  - koniec
  - štart
  - základne výstupné polia


##### VYTVORENIE PROGRAMU MERANIA

Program merania bude rozdelený do dvoch Taskov aby bežalo oddelene samotne  Meranie a obsluha ostatných podporných časti programu. Task merania bude bezat na 100 mikro sekundách aby sa docielilo co najpresnejšieho merania.  Task obsluhy bude bežať na nezmenenej frekvencii pôvodná 1ms. Program merania bude v podstate prenášať údaje zo snímačov (vstupov ) do vnutorneho prostredia TwinCAT ADS. A z prostredia ADS bude hodnota vycitana do prostredia VisualBasic

##### VYTVORENIE VYZUALIZACIE

Vizualizácia bude obsahovať viac vstupných poli a viacero obrazoviek na nastavenie poprípade vyhodnotenie. Cela vizualizácia bude vytvorená v prostredi VisualBasic6 a bude bežat na operačnom systéme WinXP alebo WINDOWS7 zatiaľ nerátam z verziou Win8 ani Win10.

##### Ladenie programu a spustenie

Spustenie samotného systému musí byt co najjednoduchšie a co najmenej komplikovane. Najlepšie  Bude automatické spustenie. Po pripojení meracích snímačov musí CPU automaticky detektovať zariadenia a music byt sebestačne.

##### Simulácia PLC - program

 Ako simulačný program používam knižnicu simulácie so začiatočnou, koncovou hodnotou a s časom určujúcim dĺžku simulácie . Tie to hodnoty sú zadávané priamo z programu merania cez vizualizáciu. Prepojením PLC v TwinCAT managery sa hodnoty z PLC1 prepisu do PLC2 a následne do samotného programu plc2. Program simulácie je spúšťaný ďalšou premennou z plc1.

##### MERANIE

Program merania je s spúšťaný priamo z vizualizácie plc1 tlačítkom štart. Po štarte sa vynuluje počítadlo tikov a do pola údajov sa postupne zapisujú hodnoty zo simulácie. Zo získaných hodnôt sa dá určiť ze hodnota merania sa zmení asi 10 x za milisekundu čo je podľa našich predpokladov postačujúce pre naše meranie.

#### Aplikcny dennik

2017.7.28	  beta 1.0.0

	Definicia poziadaviek a vyber zakladneho PLC systemu. Zaroven vyber vyzualizacie a programovacieho prostredia, pre zapis udajov a grafickeho zobrazenia nameranych udajov. Zoznamenie sa s protokolom ADS. Vytvorenie prveho zakladneho spojenia TC_ADS a VisualBasic6. Vytvorenie zakladneho formulara a  formulara na Nastavenie cidiel a komunikacie ADS.

2017.7.29   beta 1.0.1

	Vytvorenie Funkcie na ziskanie aktualneho casu zo systemu Windows. Vytvorenie Pola pre namerane hodnoty a spojenie nameranych udajov a casu. Uprava nastaveni a vytvorenie funkcie na ukladanie nastaveni do INI suboru. Vytvorenie funkcie pre nacitavanie INI suboru po starte programu. Vytvorenie Menu pre Program. Doplnenie programu o formular About. A jeho uprava.

2017.7.30  beta 1.0.2

	 Vytvorenie funkcie na zapis casu a nameranych hodnot do TXT suboru. Jednotlive udaje su oddelene znakom '|'.   Postupnost ukladanych udajov."Datum_CAS_mS|Snimac1|Snimac2|Snimac3|Snimac4|Snimac5|Snimac6|Snimac7|Snimac8"

2017.7.31	beta 1.0.3

    Dopisanie Aplikacneho dennika a oprava poskodenych funkcii z posledneho dna 2017.7.30

2017.8 1   beta 1.0.4

    Pridanie online grafu a implementácia do programu zatiaľ neodladené iba zobrazuje sinusoidu. Pridanie ďalšieho časovača pre vykresľovanie grafu. Plánovanie funkcie pre zmenu farby a rozsahu zobrazenie aktuálnych hodnôt

2017.8.2   Verzia 1.0.4a

    Dokončenie Grafu aby zobrazoval všetky krivky a pridanie novej funkcie na zmenu farby pre jednotlive krivky. Zobrazenie farby krivky. Chyba legenda s aktuálnym údajom (hodnota čidla)

2017.8.5

    Nič

2017.8.6   beta 1.0.5

    Programovanie funkcie načítania uložených údajov. Odlaďovanie stávajúcich funkcii a úprava Toolbaru. Doplnenie ikon a priradenie funkcii tlačidlám. Úprava formulára O programe upravenie doplňujúcich informácií

2017.8.7   beta 1.0.6

    Odlaďovanie funkcií grafu

2017.8.9

    BAUR

2017.8.10   Verzia1.0.6a

    Odlaďovanie funkcii grafu , menu , toolbar.. Poslovenčenie všetkých tlačidiel

2017.8.12   beta1.0.7

    Upratanie kódu a pridanie komentárov . Úprava otvárania súboru. Pridanie zavretie offline grafu.

2017.8.14

    oprava chyby chýbajúceho adresára pre záznamy.

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



2017.10.13

    uprava kodu na heneroanie klucaA. Rozbehnutie aplikaccie pod windows7.

2017.10.14

    Nove Cpu a karta v PLC je nosia verzia TwinCat 2.11.22343 co prinieslo nekompatibilitu so starsou verziou – Upgrade PLC programu a instalacia noveho TC do PC
    pokus o rozbehanie plc programu na novom PLC CX1020   	     

2017.10.15

    Register na kluce
    HKEY_CURRENT_USER\Software\VB and VBA Program Settings\Presure Log\Application

2017.10.17

    dokoncenie sekcie ochrany programu a registracie programu

2017.10.20

    Oprava zatvarania okna options
    uprava zobrazenia online grafu a prepoctu hodnoty na bary
    doplnenie TCPLC o generovanie pily a sinusoidy

2018.4.12  v 1.1.10

    Pridanie zobrazenia nameraných hodnot podla pozicie mysky pod legendu grafu
    odladovanie programu
