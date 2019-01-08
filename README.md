### Meranie-Tlaku

#### DEFINICIA MERANIA A ZAKLADNE NAVRHNUTIE SYSTEMU

  Zakladaný návrhom je merať priebehy hydraulického tlaku pomocou meracieho zariadenia s nasledovnými požiadavkami

##### Základne údaje pre zariadenie :


* meranie Hydraulickeho tlaku na minimálne 6-ich meracích bodoch
* zobrazovani aktuálne nameraných hodnôt
* zaznamenávanie nameraných hodnôt v reálnom čase
* dĺžka záznamu údajov čo najdlhšia (zakladny pozadovany cas je 24Hodin)
* vzorkovacia frekvencia musi byt cca 10 milisekund a menej
* Meranie bude predvádzane jednoduchými meracimi cidlami s vystupom 4-20mA. Ktore budu pripojene na Hydraulicky System (HS ) stroja. Na pripojenie sa predpoklada volne pristupne miesto s minimeskou . Predpokladana dlzka pripojenia meracich kablov k meracim bodom HS je cca 5–15metrov.
* Spojitost merania bude zabezpecena vzorkovanim

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

[Aplikacny Dennik](Historia)