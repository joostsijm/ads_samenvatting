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

* 4, lecture 4, 2020-09-23
Big-O efficiency, simple sorts, comparator

* 5, lecture 5, 2020-09-30
MergeSort, QuickSort selection sort, insertion sort, shellsort, mergesort, quickset, heapsort

* 6, lecture 6, 2020-10-07
Stack, Queue, Priority Queue, Heap

* 7, lecture 7, 2020-10-21
Hashing, Sets, Maps

* 1, lecture 8, 2020-11-11
Functional interfaces, Lambda expressions

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
