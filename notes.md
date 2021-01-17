# ADS Samenvatting notities
Notities, zoals de titel zegt.

## Week overzicht
* 1, lecture 1, 2020-09-02
Recap OOP (references, wrappers, generics, interfaces), Abstract datatypes, interator

22:00
What is object-oriented program
    - modeleren van de echte wereld
    - collecties van van samenwerkende objecten
        - air traffic control system: aircraft, airport, flight, scheduele
        - account management system: customer, account, transaction
        - word processor: character, word, paragraph, font, format
    - for medium to large problems

23:30
Abstraction
    - thinking about something as an idea
    - ignoring irrelevant details and ephasizeing essential ones
    - think about component withouth worrying about detail
    - taking out essentials which are common to all types
        - abstract car is composed of abstract engine, abstract wheels
        - color is inrelevant detail to the idea of a car

24:00
Modularisation
    - breaking down, a program or anything, into manageable pieces
    - smaller components - easier to deal with
    - with a smaller class it's easier to test
    - easier to collaborate in a team

25:00
Object oriented systems
    - composite, modular, and organised around data
    - classes represent a piece of data
    - best strategy for large, evolving software systems
    - forces design before coding

26:00
Objects
    - fundamentele abstractie waar op we onze systemen bouwen
    - instantie van een class in het geheugen
    - karakter eigenschappen
        - staat
            - velden
        - gedrag
            - methodes
        - identiteit
            - hoe we verwijzen naar de object

27:00
Classes
    - sjabloon, specificatie, voor een object
    - specificeert de eigenschappen van een groep vergelijkbare objecten

28:00
Relations between objects
    - objecten werken samen en zijn verbonden met andere objecten
    - minimalizeren van korte koppeling, hoge afhankelijkheid van elkaar
    - zonder interactie geen werkend systeem
    - associatie
        - associatie met ander object
        - mogelijke kardinaliteit
        - objecten kunnen los van elkaar bestaan
    - aggregatie
        - groepeering van objecten
        - mogelijkheid los van elkaar bestaan
        - kan tijdelijk deel uitmaken
    - compositie
        - samengestelde groep van onderdelen
        - kunnen niet los bestaan
        - vaak korte koppeling
    - erfenis
        - object stamt af van ander object (ouder kind relatie)
        - korte koppeling
        - sub-classing
            - functionaliteit toevoegen

35:00
Fundamentele eigenschappen van een object georienteerde taal
    - erfenis (inheritance)
        - afstammen van andere objecten
        - methode overschrijven
            - overschrijven van geerfde methodes
            - methode behoud de zelfde naam in ouder en kind klas
            - dynamische binding die polymorfisme toestaat
    - inkapseling (encapsulation)
        - beperken of controlle over de manier dat objecten gemanipuleerd worden
        - private properties, public get / set
    - polymorfisme (polymorphism)
        - vermogen van een object om verschillende vormen aan te nemen
        - zorgt voor minder korte koppeling van erfenis

Abstractie (abstraction)
    - abstract class
        - klas die niet geïnstantieerd kan worden
        - initialiseren van de klas is niet wenselijk of logisch
        - voorbeeld: vorm
        - defineert een type
        - heeft een ouder en kan ouder zijn van een (abstracte) klas
        - heeft een constructor
        - kan (abstracte) methodes hebben
        - kan instance fields hebben
    - interface
        - is belove van gedrag (methodes)
        - pure abstracte klass om alleen gedrag van een klass te defineren (method signature)
        - geeft minimale functionaliteit
        - geen constructor
        - alleen abstracte methodes
    - zorgen voor lagere koppeling tussen objecten
    - veel ontwerp patronen zijn hier op gebaseerd
    - abstracte data types
        - een datatype waar van de implementatie van de methodes verborgen is
        - bevat data specifiek voor een instante van de abstrate data type
        - bevat methodes om deze data te bewerken
        - is ingekapseld, toont slechts enkele van de subprogramma's
        - bijvoorbeeld: een list object gebruikt een array, laat gebruiker de array middel van een interface bewerken
            - voorkomt het bijwerken van indices door gebruiken

50:00
Grouping object
    - nodig in veel applicatie voor het bijhouden van objecten
    - kenmerken van een collecties
        - aantal items om op te slaan is niet vastgesteld
        - mogelijkheid om items to te voegen / verwijderen
    - mogelijke eigenschappen
        - toevoegen, verwijderen, vinden, opvragen, tellen

54:00
Java collections API
    - Java implementatie van abstracte data types: java.util.Collection
    - gebaseerd op AbstractCollection, implementeerd Collection
    - bevat bijna ieder type van collectie
    - overzicht van enkele collecties
        - ArrayList: Resizable array – grows in increments
        - Hashmap: A collection of [key, data] pairs – order not guaranteed
        - HashSet: Set implemented using a hash table – order not gtd
        - Hashtable: A collection of [key, data] pairs – order not guaranteed
        - LinkedList: A linked list
        - Stack Last: In First Out (LIFO) data structure
        - TreeMap: [key,data] pairs held in ascending order
        - TreeSet: Set implemented as a tree
        - Vector: Resizable array – synchronised access
62:00
Geparametriseerde abstracte datatypes
    - Java is een statisch getypeerde programmeertaal, types moeten van te voren gedefineerd worden
    - generic
        - zorgen er voor dat een type pas later gespecificeerd kan worden
        - functioneren als parameter voor wanneer een datatype geinitialiseerd word
        - zonder zou de collection ieder Object kunnen vasthouden
            - controlleert niet het type bij het toevoegen, alles wordt als Object behandeld
            - moet gedowncast worden bij het ophalen
        - wordt verklaard in de klas declaration

69:00
Iterable
    - interface geimplementeerd door een collectie dat Iterator returned
    - Iterator
        - interface met hasNext() en next() methode
        - private class binnen de collectie
    - alternatief: gebruik .size() en loop door de indices
    - for each loop is shorthand voor een while loop met iterator
    - rekening houden met:
        - time complexity: relatie tussen aantal elementen en tijd
        - memory complexity: relatie tussen aantal elementen en ruimte
        - order of complexity

80:00
Primitive types
    - collecties kunnen geen primitieve types behouden, ze zijn geen object
    - wrapper class: houd de primitieve type vast
        - int: Integer
        - zijn trager dan primitieve types
        - heeft ook methodes als parseInt
        - Autoboxing
            - primitieve types worden automatisch in een wrapper geplaatst


* 2, lecture 2, 2020-09-09
Recursion (induction)

2:00
Methode roept zichzelf aan
    - Je krijgt een soort oneindige loop
    - stop conditie
        - bepaald hoe de oneindige loop eindigd

13:00
Nodig
    - recursie is nodig voor het sommige oplossen
    - bijvoorbeeld het het doorlopen van een tree, of het vinden van grootste gemene deler.

16:00
Statement order
    - belangrijk
    - bepaald hoe de data gemanipuleerd word
    - recursieve methode wordt eerst uitgevoerd voor dat de rest van de methode

20:00
Groots gemeende deler
    - methode met input a en b
    - check of b gelijk is aan 0
    - als dat klopt dan is a de groots gemeende deler
    - ander roep de methode aan met b en a modulo b

33:00
Methode aanroepen
    - een methode bestaat uit code en data
    - data
        - bestaat uit parameters en locale variabelen
        - wordt opgeslagen
    - stack frame
        - voor elke methode aanroep wordt er een nieuwe aangemaakt
        - bevat een retouradres
        - weg gegooid na dat de methode is uitgevoerd

39:00
Recursie gebrui
    - om het concept van recursie te begrijpen hoef je niet te weten hoe het werk
    - het is genoeg om te weten wat een recursieve methode doet
    - recursie is te vergelijken met wiskundige inductie
    - een recursieve methode volgt vaak de natuur van de data

41:00
    - bottom up: werk van beneden naar boven
    - top-down: werk van boven naar beneden
    - bisection: roep twee keer recursie van af het midden

* 3, lecture 3, 2020-09-16
List, ArrayList, LinkedList, Linear Search, Binary Search

01:00
List
    - is een abstracte data type
    - omdat je het op meerdere manieren geimplementeerd kan worden

05:00?
ArrayList
    - een list gebaseerd op een array
    - door middel van een lengte variable hou je het laatste element in de array bij
    - constructor
        - initialiseer array (met zelf bedachte lengte, en lengte variable
    - toevoegen
        - Vergelijking lengte variable met lengte van de array
        - wanneer dat groter is maak nieuwe array met dubbele grote en vervang oude array
    - verwijderen
        - check opgegeven index
        - verplaats alle elementen die na de index komen een terug
        - verlaag de lengte variable met een

65:00
LinkedList
    - gebruikt geen array
    - elementen worden in nodes opgeslagen die onderling gelinked zijn
    - node is een prive klasse binnen de lijst klasse en heef een next propertie naar de volgende node
    - list houdt de eerst en laatste node bij
    - toevoegen
        - node aanmaken en als er nog geen nodes bestaan toevoegen als head node
        - anders aan de next laatste node toevoegen
        - laatste node vervangen met nieuwe node
    - terughalen
        - begin bij head en blijf optellen naar de volgende node
        - return node wanneer gewenste index is bereikt
    - exists
        - loop van af head over next, als er een match is return true
        - anders return false
    - delete
        - van af head lopen naar gewenste node
        - laatste bezichte node bijhouden
        - wanneer er een match is laat de laatste bezochte node naar de next node verwijzen
    - types
        - singular: ieder node refereerd naar de volgende node
        - double: iedere node refereerd naar de volgeende en vorige node
        - circular: de laatste node refereerd weer naar de eerste node

voordeel
    - linkedList
        - toevoegen sneller, hoeft geen array gecopieerd te worden
        - delete sneller, kleine verandering, begin van collectie is beter
    - arrayList
        - get en exists sneller, kan direct index opvragen
        - delete langszamer, veer variablen verplaatsen, einde van collectie is beter

Linear search
    - begin aan de voorkant en checkt iedere variable tot laatste item
    - snelheid afhankelijk van positie in collectie

96:00
Binary search
    - de collectie waar in je zoekt moet gesorteerd zijn
    - split de collectie in tweeën
    - als de waarde lager / hoger dan het midden is, split dan de lage / hoge helft
    - tot dat je bij het doel uitkomt


* 4, lecture 4, 2020-09-23
Big-O efficiency, simple sorts, comparator
Liang 22.1 - 22.7

3:30
birthday paradox
    - oplossing 1
        - sla datums op in een array
        - check alle datum tegen elkaar met een double for-loop
        - efficiëntie
            - tijd: O(n^2): stijging exponentieel
            - geheugen: O(1), er wordt niets opgeslagen
    - oplossing 2
        - dates opslaan in array van 366 dagen met waardes 0
        - voor iedere datum zet dayOfYear in array naar 1
        - als een dayOfYear als 1 is heb je een match
        - efficiëntie
            - tijd: O(n) stijging blijft constant
            - space: gebruikt meer geheugen, zeker in vergelijking met weinig dates

12:00
Efficientie
    - als je iets efficient maken is het een afwezing kwa tijd, of geheugen
    - hoge tijd efficientie betekend vaak lage space efficientie
    - hoge space efficientie betekend vaak hoge tijd efficientie

13:00
Two sides
    - wisselwerking tussen algoritme en data structuur
    - afhankelijk algoritme kan je een bepaalde data structuur kiezen
    - of afhankelijk van je data structuur heb kan het zijn dat je een bepaald algoritme moet kiezen
    - method to solve -> algorithm
    - storge of data -> data structure
    - bijvoorbeeld: binare boom, linked list hebben eigen efficiente algoritmes

14:00
Algoritme
    - informele definitie: stap voor stap methode om een probleem op te lossen; recept
    - geeft een andtwoord op je probleem
    - bijvoorbeeld
        - hoe bak ik een cake
        - bereken de volume van een vorm
        - vinden van data in een grote database
        - sorteren van een set data

16:00
Data structuur
    - manier waar op je de data op de computer hebt opgeslagen
    - implementatie van data opslag
    - bijvoorbeeld: Array, List, Stack, Queue, HashMap, Tree, Graph

20:00
Efficientie van een array
    - toevoegen
        - aan het einde van array een element toevoegen
        - is ogenblikkelijk, onafhankelijk van lengte
    - vinden
        - elk element vergelijken tot dat je een match heb
        - gemiddel vergelijk je de helft van de elementen in de array
        - twee keer zo lange lijst betekend twee keer zo veel vergelijken
    - verwijderen
        - elk element na het te verwijderen element een terug verplaatsten
        - ongeveer gelijk aan het vinden van een element

28:00
Algoritmische complexitie
    - tijd complexiteit: relatie tussen aantal elementen en benodigde tijd
    - ruimte complexiteit: relatie tussen aantal elementen en geheugen
    - tijd-ruimte trade off, afweging tussen de twee
    - volgorde van complexiteit

30:00
    - contstant time, onafhankelijk hoe veel items, het duur altijd even lang

42:00
    - dubbele for loop is kwadratish

44:00
Time complexity JVM
    - java optimaliseert de code in de Java Virtual Machine
    - controleerd uitkomsten van functies, en maakt aanpassingen als hij repetities ziet
    - Just In Time programming
    - Uitzetten met -Xint

47:00
Order of time complexity: big O
    - order van grote
    - linear search, van orde n, dus  O(n)
    - binary search, van orde log n, dus  O(log n)
    - log is het tegenovergesteld van exponentieel, stijgt steeds minder snel
    - kwadratisch
        - stijging is exponentieel, twee keer zo veel betekend vier keer zo veel complexiteit
    - nauwkeurigheid
        - complexiteit = O(1 + n + n^2) -> O(N^2)

57:00
Sorting

58:00
Selection sort
    - selecteer het kleinste element, vergelijk met alle elementen in collectie
    - verwissel met het eerste ongesorteerd element in de collectie
    - herhaal tot dat alles gesorteerd is
    - complexity O(n^2)

63:00
Insertion sort
    - pak het meest linker element uit het ongesoorteerde deel
    - vergelijk met laatste element in gesorteerde deel tot dat je een hoger element vind
    - paats het op de juiste plek in het gesorteerde deel
    - herhaal tot ongesorteerde deel leeg is
    - complexity O(n^2)

71:00
Bubble sort
    - complexity O(n^2)
    - staan elementen goed, gebeurt niets, anders verplaatsen
    - vergelijk eerst eerst en tweede, dan tweede en derde
    - stappen
        - verplaatst grootste element naar rechts
        - herhaal tot dat alles op de juiste plek staat

72:00
Comparing basic sorts
    - best case en worst case
    - afhankelijk van initiale volgorde van elementen
        - almost sorted, reverse, random
    - constante tijd is ideal, maar bijna nooit haalbaar

78:00
Overzicht big O
    O(1) & constant
    O(log n) & logaritmic
    O(sqrt(n)) = O(n^0.5) & sqrt n
    O(n) & linear
    O(n log n) & n log n
    O(n sqrt(n)) = O(n^1.5) & n sqrt n
    O(n^2) & quadratic
    O(n^3) & n to to power of 3
    O(a^n) & 57

79:00
Comparable en comparator
    klasse die deze implementeerd vergelijkbaar is met andere instantie van de klasse
    - comparable
        // - klasse die dit implementeerd vergelijkbaar is met andere instantie van de klasse
        - klasse maar op een manier vergelijken
        - compareTo
            - implementeer methode in de klasse
            - heeft een ander object als parameter
            - returned een integer
            - als de huidige instantie voor de meegegeven instantie moet komen return iets kleiner dan 0
            - als de huidige instantie gelijkwaardig is aan de meegegeven instantie return 0
            - als de huidige instantie achter de meegegeven instantie moet komen return iets groter dan 0
    - comparator
        - extra sorteer klasse
        - Voor vergelijken van twee instanties van klasse
        - heeft een compare methode, met twee parameters
        - kan ook binnen de klasse die je wil sorteren
    - standaard java class
        - geimplementeerd
        - natuurlijke ordering

* 5, lecture 5, 2020-09-30
MergeSort, QuickSort selection sort, insertion sort, shellsort, mergesort, quickset, heapsort

14:00
Quicksort
    - eigenschappen
        - meest gebruikte sorteer algoritme
        - niet (zo) moeilijk te implementeren
        - werkt goed onafhankelijk van input data
        - in place, heeft geen extra ruimete nodig
        - Efficientie is O(N log N)
        - devide and conquer
        - paritie de array in twee kleinere arrays
        - recursief
    - partitioning
        - selecteer een pivot, meestal het eerst element
        - zoek van af de voorkant tot je een waarde vindt boven de pivot
        - zoek van af de achterkan tot je een waarde vindt die boven de pivot is
        - vervang deze twee posities en herhaal
        - wanneer ze elkaar in het midden vinden verplaats de pivot hier naar toe
        - return de positie van de pivot
    - stap
        - shuffle de collectie
        - kies een pivot, element waar mee je gaat vereglijken, uit de collectie
        - splits de collectie op in waardes groter en kleiner dan pivot.

63:00
Merge sort
    - recursief
    - Opsplitsen van collectie
    - stappen
        - begin met twee gesorteerde collecties
        - vergelijk de eerste waardes van de twee collecties
        - zet de waarde die eerst komt in de gesorteerde array
        - herhaal met de volgende positie van de array waar je de waarde uit hebt gehaald.
    - buttom up
    - meer over opzoeken

sort worst average best
selection n^2/2 n^2/2 n^2/2
insertion n^2/2 n^2/4 n
merge nlogn nlog nlognn
quick n^2/2 2nlogn nlogn
3-way quick n^r/2 nlogn nlogn

* 6, lecture 6, 2020-10-07
Stack, Queue, Priority Queue, Heap

double ended queue

3:00
Stack
    - wat er als eerste in gaat komt er als eerst uit
    - weg terug vinden, als je een dood punt vindt terug lopen naar laatste kruispunt
    - undo, redo, als je undo uitvoert komt de acties op de redo stack
    - recursie gebruikt stack, zo dat het weet waar het terug moet komen
    - first in, last out FIFO, last in, first out LIFO
    - operations
        - push: toevoegen aan het eind
        - pop: afhalen aan het eind
        - isEmpty: controlleer leeg
        - peek: kijken naar laastste waarde
        - size: grote
    - voorbeeld functie: een woord omdraaien, alle letters pushen op een stack en poppen>
    - implementatie: array, ArrayList / LinkedList

23:00
Queue
    - achterkan er bij, voorkant er af
    - printer queue, ticket / message verwerken op een server
    - first in, first out (FIFO)
    - operations
        - enqueue, toevoegen aan het begin
        - dequeue, verwijderen aan het eind
        - isEmpty, controleer leeg
        - size, grote
    - implementatie met array
        - int variable voor begin en eind
        - bij enqueue verhoogd eind variable
        - bij dequeue verhoog start variable
        - als eind variable einde array bereikt begin opnieuw in array als begin variable hoger is
        - als array vol is verdubbel de lengte
    - implementatie met LinkendList
    - in principe is efficiency constant, tot dat array verlengt wordt

53:00
Deque
    - Double ended queue
    - kan aan het begin en einde toevoegen en verwijderen

70:00
Priority queue
    - werkt ongeveer als een que, first out
    - items gesorteerd op waarde
    - hoge priority items gaan naar het einde van de queue
    - toevoegen
        - methode moet aangepast worden
        - vergelijken met bestaande waardes
        - O(n)
73:00
Hheap
    - berg
    - structuur binary tree: graaf met twee children per node
    - complete / dense: eerst bovenliggende lagen vol zijn
    - node waarde moet hoger zijn als de waardes van kinderen
    - implementatie array
        - eerst item begin op 1
        - per level gebruik je het dubbele aantal indices
        - left child = index * 2
        - right child = index * 2 + 1
        - parent = index / 2
    - gevolgen
        - elk pad van root geeft ordered list
        - geen traversal mogelijk, weakly ordered
        - verwijderen van grootste makkelijk
            - snelle verwijderen van maximum
        - snel nodes toevoegen
    - verwijderen van maximum
        - return index 1
        - zet laatste node op index 1
        - voer sink methode op index 1 uit
    - sink laten zakken naar de juiste positie
        - vergelijk hoogste child
        - check of hoogste child hoger is dan parent, ander ben je klaar
        - verplaats met hoogste child node
        - herhaal tot er geen childs meer zijn
    107:00
    - insertion
        - voeg element toe aan einde van de array
        - swim toegevoegde node
    - swim (tricle) verplaatsen naar de correcte positie door te vergelijken met parent
        - als parent lager is swap posities
        - herhaal tot parent hoger is
    - efficiency
        - toevoegen O(log n)
        - verwijderen O(log n)
        - zoeken / verwijderen O(n)


* 7, lecture 7, 2020-10-21
Hashing, Sets, Maps

4:00
Collection interface
    - Set interface implementeerd de collection interface

7:00
Set
    - in een set is elk element uniek
    - heeft geen volgorde
    - bijvoorbeeld: studenten in een team
    - operaties
        - add: toevoegen als het nog niet bestaat
        - remove: verwijder als bestaat

15:00
TreeSet
    - gebruikt boom strucuur om elementen op te slaan
    - moet Comparable implementeren om te vergelijken of element al bestaat
        - alternatief kan je een comparator toevoegen aan de contructor

23:00
HasHSet
    - afhankelijk van `hashCode` en `equals`, geen comparator

27:00
Hash
    - als methode equals waar is moet hashcode hashCode hetzelfde geven
    - als methode equals niet waar is kan de hashCode anders zijn
    - wanneer equals niet is geimplementeerd wordt de functie van de super klasse gebruikt
    - als er geen super klasse is wordt door de object klasse de locatie in het geheugen (referentie) gebruikt

- hashCode
    - methode die een integer returned
    - een integer in de Interger.hashCode opgeven is onnodig

43:00
Equals
    - controller of object is huidige instantie is, return true
    - controller of object niet null is en of het object geen instantie is van het huidige object, return false
    - cast object naar de klasse van huidige instantie
    - controller of identificerende velden gelijk zijn

52:00
Set operations
    - union: addAll
    - subset: containsAll
    - intersection: retainAll
    - minus: removeAll

55:00
Static factory methods
    - Set.of(...), maak een set van variables
    - List.copyOf(...)

    - List.of(...), maak een list van variables
    - set.copyOf(...)

57:00
Hashing 1
    - scramble / map een waarde van een object naar een code
    - consitent: dezelfde waardes moet altijd op hetzelfde code uitkomen
    - onomkeerbaar: kunt niet de orginele waarde van de code krijgen

59:00
Hashing 2
    - operatie dat een waarde verstrooid / mapped naar een willekeurige integer, consitent en mogelijk onomkeerbaar
    - verstrooid: verbeel de waardes gelijk over beschikbare integers
    - mogelijk onomkeerbaar: duplicaten kunnen bestaan maar het lieft zo weinig mogelijk
    - hash gebaseerde data structuren: HashSet, HashMap

61:00
stappen voor HashSet of HashMap
    - steutel gaat door hash function
    - de hash code gaat door modulo array size
    - de array index wordt gecontrolleerd op collissions
    - uiteindelijke index

63:00
Voorbeeld
    - nummerbord van 31 auto's
    - combinatie twee cijfers en een letter
    - geef letters een waarde van 1 tot 26
    - hashCode berekennen: letterwaarde * 100 + nummerwaarde
    - hashCode % 31 = index

65:00
Collisions
    - overeenkomende hashCode van twee verschillende waardes
    - kan niet voorkomen worden
    - oplossingen:
        - open addressing
            - linear probing
                - als een plek bezet is ga naar de volgende plek
                - herhaal tot dat er een plek vrij is
                - nadeel: clustering
            - quadratic probing
                - als er een plek bezit is tellen we daar n kwadraad bij op, beginnend bij en
                - verhoog iedeer keer n tot dat er een plek vrij is
                - nadeel: geen primare clustering maar wel secondaire clustering
            - double hashing
                - linear en quadratic probing geven dezelfde stap volgorde voor alle keys
                - genereer een stap grode afhankelijk van de key
                - andere hash methode dan de primaire hash methode
                - zorg er voor dat je geen stap grote krijgt van 0
                - stepSize = 1 + hash2(key) % CONSTANT
                - constante niet groter dan de grote van de array
        - separate chaining
            - als hashCode op dezelfde index uitkomt stop ze samen in een LinkedList
            - nadeel: lijst kan lang worden
            - geen cluster problemen
            - datastructuur is complexer
76:00
Een goede Hash functie kiezen
    - afhankelijk van de omvang en verdeling van de waarde
    - perfecte hash functie: elke key gaat naar een apparte locatie, geen collisions
    - vereisten
        - consistent
        - efficient te berekennen
        - uniform verdeeld 0 tot MAX_INT
    - voorbeeld
        - goed: laatste drie cijfers
        - slecht: eerste drie cijfers

78:00
grote onderlinggende array
    - gadviseerd een priemgetal als grote te kiezen
    - java resize
        - automatisch als inhoud meer dan 75% is
        - vergroot in macht van 2
        - inhoud opnieuw gehashed

79:00
Java object.hashCode()
    - returned een integer tussen MIN_VALUE en MAX_VALUE
    - String classe berekend hashCode op basis van berekening met karakter code
    - Integer returned zijn de waarde in HashCode

83:00
Hashing in Java
    - ieder klass inheirit Object.hashCode()
    - requirement: if x.equals(y), then (x.hashCode() == y.hashCode())
    - desirable: if !x.equals(y), then (x.hashCode() != y.hashCode())
    - standaard memory adress van x

85:00
Performance
    - betere spreiding in hashCode levert betere performance

86:00
Map
    - sleutel-waarde paar abstractie
    - waarde invullen met gespeceficeerde sleutel
    - waarde opvragen met geven sleutel
    - voorbeeld: DNS, geef een domein naam en krijg ip adres

88:00
Java Map
    - interface met generics K (key) en V (value)
    - types
        - HashMap, op basis van HashCode en equals
        - TreeMap, op basis van comparable of comparator

89:00
hashMap
    - items opgeslagen in array
    - gebruikt sleutel van items
    - zoeken met key in array index
    - voordeel: snel toevoegen en zoeken
        - constante tijd: O(1) als er geen collisions zijn
    - nadeel: moeilijk te vergroten, geen manier om items op volgorde te bekijken
    - methods
        - get, krijg waarde terug of null
        - getOrDefault, geeft waarde of als die niet bestaat een default waarde
        - put, voeg een waarde toe met een key
        - putIfAbsent, voeg een waarde toe als die nog niet bestaad
        - remove, verwijder de sluitel uit de map
        - containsKey, controlleer of sleutel er in zit
        - containsValue, controller of waarde er in zit

98:00
Map Collection acces methods
    - keySet, geeft een set van keys
    - values, geeft een collectie van waardes


* 1, lecture 8, 2020-11-11
Functional interfaces, Lambda expressions, builder pattern

01:30
Comparator revisited
    - collecties kunnen gesoteerd worden door gebruik te maken van een helper object dat de Comparator implementeerd
    - compare
        -  0 if a1 equels a2
        - <0 if a1 precedes a2
        - >0 if a1 succeeds 2
    - interface contract uitbreiden voor functionele interface
    - comparator is een klasse zonder inkapseling dat maar een functie heeft
        - dat is een functionele interface

06:00
    - elke interface met een enkele abstracte methode is een functionele interface
    - functionele interface
        - de functie is om een intuitieve manier om functies door te geven, naast data objecten
        - geeft alleen toegang tot een enkele functie
            - klasse met enkele methode, zonder ingekapselde data
            - is abstract tot je het realize (define)

7:00
Vier variaties
    - (traditioneel) geef een object instantie die de interface implementeerd
    - geef een referentie naar een statische methode
    - geef een referentie naar instantie methode
    - geef een lambda expressie

    - java compiler transformeert elk van de nieuwe syntax contsructies naar een anoniem object instantie dat de functionele interface implementeerd.

8:00
Classic example
    - sort method krijgt een geinitialiseerde klasse van Comparator meegegeven
    - sort(new Author.CompareByInitials());
    - public static class CompareByInitials implements Comparator<Author> { ... }

9:00
geef een statische methode
    - sort(Author::compareByInitials2)
    - :: = referentie naar statische methode
    - public static int compareByInitials2(Author a1, Author a2)

* 2, lecture 9, 2020-11-18
Streams, Collectors, Method chaining

* 3, lecture 10, 2020-11-25
(Binary) Search Trees

* 4, lecture 11, 2020-12-02
Undirected Graph, Minimal Spanning Tree

* 5, lecture 12, 2020-12-09
Path Searching, Dijkstra Shortest Path

* 6, lecture 13, 2020-12-16
Graph Search Heuristics, A\*-search

* 7, lecture 14, 2021-01-06
State Machine Algorithm

## Onderwerpen per hoofdstuk
### OOP
OOP (references, wrappers, generics, interfaces), abstract datatypes, interator, Recursion, Comparator, Big-O efficiency

### datatypes
List, ArrayList, LinkedList, Stack, Queue, Priority Queue, Heap, Sets, Maps

### Search algorithms
Linear Search, Binary Search, (Binary) Search Trees

### Sort algortithms
Simple sorts, MergeSort, QuickSort, selection sort, insertion sort, shellsort, mergesort, quickset, heapsort,

### Collections
Hashing, Functional interfaces, Lambda expressions, Streams, Collectors, Method chaining

### Graphs
Undirected Graph, Minimal Spanning Tree, Path Searching, Dijkstra Shortest Path, Graph Search Heuristics, A\*-search

### State machine
State Machine Algorithm
