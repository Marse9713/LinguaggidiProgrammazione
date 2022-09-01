# Linguaggi di Programmazione

<h1 align = "center">Capitolo 1</h1>

- Due paradigmi di programmazione:
    - imperativo:
        - Von Neumann (C, Basic, Pascal, …)
        - orientato agli oggetti (C++, …)
        - linguaggi di scripting (PHP, JS, …)
    - dichiarativo:
        - funzionale, descrivendo insiemi di funzioni (Scheme, pure Lisp, …)
        - logico basato su vincoli, descrivendo un insieme di predicati (Prolog, …)
    - La necessità di avere un così ampio parco di linguaggi di programmazione è dato dal fatto che è necessario poiché vi è stata una evoluzione nel tempo di tecniche, costrutti e principi di programmazione;

    - Un altro aspetto è l’aspetto economico che è legato a necessità differenti di mercato e per avere dei vantaggi commerciali;

    - Un’altro aspetto è il lato di miglioramenti legati a nuovi linguaggi, favorendo la codifica più efficiente, la pulizia del codice e la flessibilità e modalità di impiego (diversi linguaggi possono essere sfruttati per molteplici scopi differenti)

    - Un buon linguaggio di programmazione si nota da:
    un buon supporto:

        - delle librerie (molte più possibilità e costrutti creati per diverse funzioni)
        - codice preesistente (quindi esempi di utilizzo)
        - IDE: editor e debugger (quindi da poter scrivere tale codice e confermare se il codice produce l’output aspettato e se necessario, correggerlo se vi sono errori)

        - è supportato da uno sponsor importante come ad esempio C#, Switft, GO, …
        - ha una ampia diffusione a costo basso e consente la portabilità in vari modi, come ad esempio Javascript, Java e Pascal
        - è espressivo, flessibile e potente come C, Lisp, APL, …
        - consente di avere un codice efficiente e compatto come C e Fortran
        - è di facile implementazione come BASIC e Forth

- Le qualità di un linguaggio sono in particolare:
la leggibilità:
    - chiaro
    - naturale
    - semplice
    - supporto all’astrazione
    - di facile modifica


- la scrivibilità:
    - facile passare da algoritmo a codifica
    - semplice da imparare come BASIC, scheme, Pascal
    - polimorfismo, consentendo di lavorare su diversi tipi di dato ma - con lo stesso codice
    - ortogonalità, aspetti diversi restano indipendenti (come ad esempio i tipi dato e passaggio parametri a procedure) e di conseguenza si devono integrare in modo naturale con poche eccezioni

- affidabilità: deve essere semplice da verificare e non ci sono errori nascosti 
- costo: deve essere efficiente

- gli aspetti di un linguaggio di programmazione:
    - sintassi: regole su quali caratteri costituiscono programmi, la struttura per scrivere il codice
    - semantica: come si comporta il programma, l’effetto dell’esecuzione e quindi l’output che ne consegue
    - pragmatica: l’utilizzo pratico, come scrivere buon codice, usare le giuste convenzioni e i vari stili nello scrivere i programmi
    - implementazione: come viene convertito il codice in codice macchina e la sua esecuzione
    - librerie: è il codice fornito con un insieme al linguaggio di programmazione per l’implementazione di funzionalità di base (ad esempio le funzioni algebriche)
    - tools: sono gli “attrezzi” per poter editare (editor), debuggare e gestire il codice scritto

- Le macchine astratte:
    - è un sistema di calcolo diviso in una gerarchie di macchine virtuali, anch’esse astratte chiamate Mi
    - ciascuna macchina è costruita su quella precedente, partendo dal livello hardware (assembly)
    - ciascuna macchina è caratterizzata da un proprio linguaggio Li che riesce ad eseguire, per poi passare alla successiva

- Per l’esecuzione del codice:
    - per eseguire il codice (ad esempio Java), si userà la macchina astratta Mjava (macchina java)
    - si userà la macchina sottostante (ad esempio la JVM) che qualcuno ha già implementato e si esegue la traduzione nel linguaggio relativo a L(JVM) (il Java ByteCode)

- Compilazione ed interpretazione:
    - si parte dalla compilazione pura:
        - il compilatore traduce il programma sorgente di alto livello in un programma di destinazione equivalente (linguaggio macchina + SO)
        - non è necessario avere il programma sorgente e il compilatore durante l’esecuzione del codice
- poi vi è l’interpretazione pura:
    - l’interprete riceve il programma sorgente e i dati, traduce le singole istruzioni che vengono eseguite immediatamente, quindi le traduce passo passo
- l’interprete e il programma sorgente, sono presenti durante l’esecuzione del programma, in questo caso
- l’interprete è il luogo di controllo durante l’esecuzione del codice
- le differenze maggiori risiedono:
    - compilazione:
        - migliori prestazioni, si evitano traduzioni e controlli a tempo di esecuzione
        - sono possibili controlli prima dell’esecuzione (come il type-checking statico), quindi vengono messi in evidenza errori nel codice, invece di generare errori durante l’esecuzione
- interpretazione:
    - è più flessibile
    - più semplice l’implementazione
    - esegue subito il codice in diretta (nessun type checking o altro, quindi durante l’esecuzione dei vari passaggi si scoprono i vari errori)
    - rende il debugging molto più semplice, proprio perché controllando input ed output è possibile sapere dove il codice presenta errori nell’algoritmo o nella sua strutturazione

- Nei casi reali, la traduzione in codice macchina avviene con più passi, qui risiedono macchine virtuali intermedie tra linguaggio di programmazione e codice macchina:
- vi è la  combinazione tra compilazione ed interpretazione:
    - linguaggi interpretati (preprocessing seguita  dall’interpretazione)
    - linguaggi compilati: (generazione codice intermedio come con Java che si deve arrivare al Java ByteCode)
    - quindi vi è una traduzione tra codice sorgente e codice della macchina astratta e per concludere al codice macchina per la sua reale esecuzione

- Differenza tra preprocessing e compilazione:
    - parliamo molto spesso di codice interpretato (quindi con un traduttore da codice sorgente a un codice intermedio)
    - la compilazione prevede una traduzione da un linguaggio all’altro
    - prevede l’analisi complessiva dell’input
    - viene riconosciuta la struttura sintattica del programma e successivamente viene eseguito il controllo sugli errori
    - nel preprocessing questi aspetti non sono presenti
    - viene eseguita la trasformazione sintattica e locale del programma

- supporto run-time:
    - raramente il compilatore produce solo codice macchina ma anche istruzioni virtuali, ad esempio:
    - chiamate al sistema operativo
    - chiamate a funzioni di libreria (come quelle algebriche, geometriche, …)
    - la traduzione non è a livello di codice macchina ma a livello di macchina virtuale intermedia, quindi è una somma con le chiamate al sistema operativo e a livello di libreria
    - un programma linker unisce codice library e subroutine
    - il compilatore crea un codice macchina incompleto e il linker con questo codice macchina e le library routines, produce il programma in linguaggio macchina
- ciò è necessario per:
    - facilitare il debugging (assembly è molto più leggibile)
    - isola il compilatore da modifiche nel formato delle istruzioni (solo l’assemblatore, condiviso tra molti compilatori, deve essere modificato)

- ad esempio:
    - la traduzione del linguaggio C++
    - il programma sorgente viene preprocessato, generando il programma sorgente modificato
    - questo programma modificato viene compilato dal C++ compiler per ottenere il codice in C
    - successivamente il codice in C viene compilato dal C compiler e viene tradotto in linguaggio assembly

    - la compilazione dinamica (just-in-time) è la compilazione svolta all’ultimo momento (molto simile all’interpretazione)
    - i casi tipici di tale metodologia sono i programmi scritti in bytecode, migliorando le prestazioni rispetto all’interpretazione:
        - Java ByteCode (JVM)
    - analogamente un compilatore C# produce .NET Common Intermediate Language (CIL)
    - l’interprete, durante l’esecuzione del programma, decide di tradurre, trasformare in codice macchina i vari blocchi di codice poiché migliora l’efficienza e preserva la flessibilità e la sicurezza di tale codice

- Il bootstrap, implementa il compilatore:
    - scrivo un nuovo compilatore per C, come programma in C
    - evito di avere un circolo vizioso mediante l’utilizzo di versioni differenti
    - compilo il nuovo compilatore con una vecchia versione del compilatore e se il nuovo compilatore produce codice più efficiente, ricompilo usando la nuova versione, ottenendo un compilatore più efficiente

- Analisi lessicale, la scansione (scanner):
    - scanner: il lavoro dello scanner è molto semplice ed intuitivo (divide il programma in lessemi, ovvero piccole unità e significative)
    - per ogni lessema produce un token
    - semplifica le fasi successive (come ad esempio la costruzione di un parser che esamina caratteri anziché token come input ma è inefficiente)
    - i linguaggi regolari descrivono le singole classi di lessemi
    - lo scanner implementa un DFA

- Analisi sintattica, il parsing
    - si analizza l’intero programma definendo la sua struttura
    - la sintassi è descritta mediante linguaggi liberi dal contesto
    - riconosciuti tramite PDA
    - viene costruito l’albero della sintassi astratta , ovvero una rappresentazione ad albero della struttura del programma

- Analisi semantica
    - esegue controlli sul codice statici (come il type checking) non implementabili dal parser (grammatica contex free)
    - altri controlli (ad esempio gli indici di matrice fuori limite) eseguibili solo a tempo di esecuzione (controlli dinamici)

- Il modulo intermedio
    - viene prodotto del codice intermedio (da codice di alto livello a codice, ad esempio, assembly)
    - il codice intermedio è indipendente dal processore, rende più facile l’ottimizzazione o la compattezza (esse sono richieste contrastanti poiché è possibile avere un’ottima ottimizzazione ma con scarsa compattezza e viceversa)
    - per qualche macchina astratta, il codice intermedio può assomigliare al codice macchina

- L’ottimizzazione
    - il programma viene trasformato in codice intermedio ed in uno equivalente per rendere l’esecuzione più veloce o utilizzando meno meno memoria
    - possiamo dire che il termine è improprio, poiché si migliora il codice
    - è una fase facoltativa
    - la fase di generazione del codice, produce linguaggio assembly o linguaggio macchina rilocabile (a volte)
    - possono esserci delle ottimizzazioni per le specifiche macchina con uso di istruzioni speciali, modalità di indirizzamento, …, ma vengono eseguite durante o dopo la generazione del codice target

- Tabella dei simboli
    - tutte le fasi si basano su una tabella dei simboli che tiene traccia di tutti gli identificatori nel programma e di ciò che il compilatore è a conoscenza su tali programmi
    - può essere conservata per poi essere utilizzata da un debugger, anche dopo che la compilazione è stata completata


<h1 align = "center">Capitolo 2</h1>

# Analizzatori lessicali e sintattici

- Descrizione di un linguaggio di programmazione
    - sintassi: quali sequedi caratteri costruiscono programmi, la loro struttura
    - semantica: significato, come si comporta un programma, l'effetto della sua esecuzione
    - pragmatica: utilizzo pratico, come scrivere buon codice, convenioni, stili nello scrivere i programmi
    - implementazione: come eseguire il codice sorgente
- Sintassi linguaggio di programmazione:
    - quali sequenze di caratteri formano un programma e quali invece non possono essere utilizzate per poter descrivere un programma corretto
    - la struttura sintattica di un programma, la sua divisione in componenti e sotto-componenti (dichiarazioni, blocchi, cicli, singole istruzioni)
    - descrizione, completamente formale, ottenuta tramite le grammatiche

- Grammatica costituita da:
    - un insieme di simboli terminali, elementi base che possono essere:
        - l'insieme di parole della lingua italiana
        - l'insieme dei simboli base di un linguaggio di programmazione (simboli di operazione, identificatori, separatori)
        - lettere di un alfabeto A
    - un insime di simboli non terminali, categorie sintattiche a seconda dei casi possono essere:
        - nomi, verbi, articoli, ...
        - identificatori, costanti, operazioni-aritmetiche, ...
    - un insime di regole grnerazione: spiegano come sono i composti non-terminali (possono espandere un non terminale)
    - le grammatiche vengono divise in classi in base alla complessità delle regole ammesse
    - regole più sofisticate: permettono di definire più linguaggi, linguaggi più complessi (più complesso determinare se appartiene alla grammatica diventa complesso)
- Definizione: grammatica libera (dal contesto)
    - è caratterizzata da:
        - T: un insieme di simboli terminali (alfabeto del linguaggio)
        - NT: insieme di simboli non terminali (categorie sintattiche)
        - R: insiemi di regole di produzione
        - S: simbolo iniziale che appartiene ai non-terminali

        Regole R (libere da contesto) nella forma:

        <p align = "center">V->w</p>

        con V appartente a NT e w appartiene a (T unito NT)*

- Grammaiche ambigue
    - sono le grammatiche per cui esiste una stringa con due alberi di derivazione differeinti
    - i due alberi di derivazione inducono
        - due interpretazioni diverse della stessa stringa
        - due meccanismi di valutazione differenti
    - Queste ambiguità vanno evitate (come in risoluzione di matematica)

- Disambiguare una grammatica
    - Due possibili soluzioni:
        - rendere la grammatica non ambigua:
            . attraverso nuovi non-terminali, non terminali
            - ottengo una grammatica che genera lo stesso linguaggio più complessa
        - convivere con una grammatica ambigua
            - si forniscono informazioni aggiuntive su come risolvere l'ambiguità
                - ordine di precendeza degli operatori
                - per un singolo operatore o per operatori nella stessa classe di equivalenza
        è una  delle soluzioni usata anche nei parser

- Albero astratto della sintassi
    - gli alberi di derivazione contengono informazioni utili per interpretare, valutare, dare semantica alle stringe
    Ma:
        - A volte è necessario complicare la grammatica ed espressioni per definire la giusta interpretazione
        (a + b) * c
            - parentesi () necessarie per definire la precedenza
            - questi orpelli sono inutili una volta costruito l'albero sintattico dell'espressione
        - gli alberi di derivazione possono essere rindondanti, contenere informazioni inutili per l'interpretazione dell'espressione
    - gli alberi astratti della sintassi sono gli alberi ai quali sono rimossi i nodi rindondanti ai fini dell'analisi
    - danno una rappresentazione più compatta contengono solo le informazioni utili
        - permettono una computazione più pratica ed efficiente
        - è la rappresentazione usata dai compilatori
    - mostrano con maggior chiarezza il significa della stringa di caratteri dall'espressione stessa
    - forniscono una sintassi minimale con un effetto secondaria, poiché è ambigua, prevedono dei meccaniscmi esterni alla grammatica per risolvere le ambiguità

- Le classi di grammatiche:
    - oltre alle grammatiche contex free esistono anche grammatiche
        - a struttura di fra se
        - dipendenti da contesto
        - libere da contesto
        - lineari sinistre e destre
        - regolari

    - le differenze che si possono evidenziare sono:
        - i diversi gradi di libertà nella definizione delle regole
        - grammatiche più generali possono:
            - descrivere una classe più ampia di linguaggi definibili
            - è più complesso decidere se una parola appartiene al linguaggio, quindi va creato un albero di derivazione per poter capire se la stringa appartiene o meno al linguaggio

- Le grammatiche nei parser
    - le grammatiche libere dal contesto sono un compromesso ottimale tra espressività e complessità
        - ci consentono un ampio insieme di linguaggi definibili da una singola grammatica
        - nei casi pratici, riconoscimento in tempo lineare sulla lunghezza della stringa (quindi ci consente di vedere, se è appartenete all'insieme delle stringhe accettate della stringa in oggetto)

- Vincoli sintattici contestuali:
    - tuttavia, non posso eliminare dall'insiseme di programmi riconosciuti (accettati dalla grammatica libera dal contesto), dei programmi che non rispettano alcuni vincoli sintattici (contestuali) come:
        - identificatori dichiarati prima dell'uso
        - ugual numero di parametri attuali e formali
            - controllo non possibile perché un linguaggio non è libero dal contesto
        - non modificabili le variabili di controllo dei cicli for
        - vanno sempre rispttati i tipi nelle assegnazioni
    - La soluzione adottata dai compilatori:
        - usare grammatiche libere (sono efficienti)
        - costruisco l'albero sintattico, effettuo una fase di analisi semantica
        - Viene chiamata semantica statica la fase di analisi semantica
            - controllo sul codice eseguibile a tempo di compilazione
            - in contrapposizione alla semantica dinamica che esegue i controlli durante l'esecuzone

- La semantica
    - la semantica di un programma definisce il suo significato, descrive il suo comportamento a run-time che è più di un semplice controllo deglie errori
    - la semantica è definita quasi empre informalmente in linguaggio naturale; un suo possibile approccio formale nonstante è possibile:
        - semantica come operazione strutturata: un programma descritto da un sistema di regole (di riscrittura) descrivono il risultato della valutazione di un qualsiasi programma
        - semantica come denotazione: descirvo con delle strutture matematiche (funzioni) il comportamente del programma

- Il front end del compilatore:
    - similmente ai linguaggi naturali nella cui sintassi:
        - si descrivono l'insieme di parole valide, il dizionario diviso in categorie
        - le regole per la costruzione delle frasi tramite le parole
    - nei linguaggi formali, nel compilatore
        - la descrizione delle parti elementari (lessema), viene eseguita tramite l'analisi lessicale
        - la descrizione della struttura generale, a partire dai lessemi, eseguita tramite l'analisi sintattica
    
    La separazione rende più efficiente l'analisi del testo

- L'analisi lessicale (scanner, lexer): 
    - Nella stringa di caratteri riconosco i lessemi, per ogni lessema costituisco un token
        <p align = "center"> token: (categoria sintattica, valore-attributo)</p>

    - ad esempio:
        <p align = "center"> l'equazione x = a + b * 2 </p>

        verrà vista come una serie di token: [(identifier, x), (operator, =), (identifier, a), (operator +), (identifier, b), (operator, *), (literal, 2), (separator, ;)]

        L'insieme dei token generati verrà passato all'analizzatore sintattico (parser)
    
    - Bisogna definire per ogni categoria sintattica:
        - identificatori
        - letterali
        - parole chiave
        - separatori
        - altri costrutti

    - la corrispondente sintassi, ossia quali stringhe di caratteri possono essere: un identicicatore, un letterale, ...
    - l'espressione della sintassi di una categoria sintattica è definita da una espressione regolare

- Linguaggi e operazioni su linguaggi:
    - Sia A un alfabeto, un insieme di simboli
      - un linguaggio con alfabeto A, è definito come
        - un insieme di stringhe di elementi A (parole su A)
      - sui linguaggi posso definire le operazioni di:
        - unione: L u M
        - concatenazione L M = {s t | s appartiene a L, t appartiene a M}, dove s e t indicano la concatenazione della stringa s con la stringa t
        - chiusura di Kleene L* = {s1, s2, ..., sn | per ogni i. si appartiene a L}
      - a partire da queste operazioni (e da un insime di cstanti, costruisco)
        - l'insime delle espressioni regolari, ossia l'algebra di Kleene
    - le espressioni regolari, consentono una rappresentazioni sintetica dei linguaggi

- Espressioni regolari, algebra di Kleene:
  - Espressioni (algebriche), L, M, N, ... costruite a partire da
    - un insime di costanti:
      - i simboli di un alfabeto A
      - dal simbolo E (epsilon) rappresentante la stringa, parola, vuota
    - l'insime delle operazioni sui linguaggi:
      - concatenazione: LM o L * M (sarebbe scritto con la motiplicazione classica)
      - unione: L|M
      - chiusura di Kleene: L*
    - Oltre alle operazioni base, le espressioni regolari sono formate da
      - parentesi tonde, (), per determinare l'ordine di applicazione
    - le convenzioni e le regole dicono però di non abusarne, riducendo la complessità di lettura
      - concatenazione e unione, associative : L(MN) = (LM)N = LMN
      - esiste un ordine di precemdeza tra gli operatori
        - in ordine crescente: *, -, |
        - ad esempio: a|bc* = a | (b (c*))

- Estensioni:
  - oltre alle operazioni di base posso definire altre operazioni come:
    - la chiusura positiva: L+ = LL*
    - zero o un'istanza: L? = E|L
    - n concatenazione di parole in L: L{n} = LL...L
    - uno tra: [acdz] = a |c | d | z
    - range: [a-z] = a | b | ... | z
    - opposto: [^a-z] - tutti i caratteri meno le lettere minuscole
  - ciò genera espressioni più compatte, ma creano la stessa classe di linguaggi
    - esistono molte altre estensioni
    - espressioni regolari usate:
      - in apllicativi per manipolare stringhe, il text-editor, in funzioni di libreria di molti linguaggi di programmazione

- Definizione tramite equazioni
  - usata in alcuni applicativi, librerie
  - permette una scrittura più chiara
    - digit:= [0-9]
    - simple:= {digit}+
    - fract:= {simple}.{simple}|.{simple}
    - exp:= {fract} e (E|+|-) {simple}
    - num:= {simple}|{fract}|{exp}
  - al posto di
    - num:= [0-9]+|[0-9]+.[0-9]+|.[0-9]+|[0-9]+.[0-9]+ e (E|+|-)[0-9]+|.[0-9]+ e (E|+|-)[0-9]+
    - è possibile notare le parentesi graffe, distinguono
      - i non terminali, identificatori come {digit}

- RIsultati teorici
  - Teorema di equivalenza
    - Linguaggi regolari possono essere descritti in molti modi diversi:
      - espressioni regolari
      - grammatiche regolari
      - automi a stati finiti non deterministici, NFA [non-determistic finite automata]
      - automi a stati finiti deterministici (macchine a stati finiti) DFA [deterministic finite automata]
  - Teorema di minimalità
    - Esiste l'automa deterministico minimo (minor numero di stati)

- Per costruire un riconoscitore per un'espressione regolare
  - Dall'espressione regolare cotruisco:
    - un NFA equivalente
    - successivamente un DFA equivalente
    - per ultimo l'automa minimo (DFA minimo)

    tutte costruizioni effettive

    - Dall'automa minimo costruisco un programma per decidere se una parola appartiene a una espressione regolare
    - Il programma simula il comportamento dell'automa minimo, contiene una tabella che descrive le transazioni dell'automa minimo e ne simula il comportamento

- Scanner, lexer
  - Li scanner deve risolvere un problema più complesso del semplice riconoscimento di una singola espressione regolare

    - Dati:
      - un insime di espressioni regolari, suddivisione in classi di lessemi (es. identificatori, numeri, operazioni, ...)
      - una stringa di ingresso
    - lo scanner deve dividere la stringa d'ingresso in lessemi, ciascuno riconosciuto da un'espressione regolare


  - Porta però a dei problemi:
    - quando termina un lessema, la soluzione è standard: la sequenza più lunga che appartiene una qualche espressione regolare
      - ad esempio la stringa '3.14e+sa' divisa in '3.14' e '+' 'sa'
      - oppure '3.14e+5a' divisa in '3.14e+5' e 'a', per deciderlo possono essere necessari più simboli di lookahead
    - cosa fare se un lessema appartiene a più classi

- Costruzione di uno scanner
  - costruisco un automa per ogni espressione regolare
  - slla stringa di ingresso
    - simulo il funzionamento parallelo degli automi
    - riconosco un lessema quando nessun automa può continuare

- Generatori di scanner (analizzatori lessicali)
  - La costruzione degli scanner può essere automatizzata
  - Classi dei programmi che:
    - Dato un insime di espressioni regolari e delle corrispondenti azioni da compiere (codice da eseguire)
    - Costruisco un programma che data una stringa, riconosce i lessemi sulla strnga e su ogni lesema esegue l'azione corrispondente (tipicamente costruire un token, ma anche altro)

- (F)LEX
  - diffuso generatore di scanner per linux (Unix)
  - prende in input un file di testo con struttura

```
    definizione (opzionale)
    %%
    regole
    %%
    funzioni ausiliari (opzionale)

```

  - la parte regole, la più importante, è una serie di regole nella forma
    - espressione regolare  azione
      - le espressioni-regolari sono quelle di unix (grep, emacs), ricca di sintassi
      - l'azione è solitamente una istruzione C, istruzioni multiple appaiono tra {} eseguite quando viene riconosciuta la corrispondente espressione (esistono strumenti equivalenti per gli altri linguaggi di programmazione)

    - ad esempio

    ```
    %%
    aa      printf("2a")
    bb+     printf("manyb")
    c       printf("cc")
    ```

    - genera un programma che
      - modifica coppie di a
      - modifica sequenze di b, lunghe più di due caratteri
      - raddopia le c

    - i caratteri non riconosciuti da nessuna espressione regolare vengono stampati in uscita (restano inalterati)

- Regole
  - nel codice delle regole si possono usare le variabili:
    - yytext: stringa (array) contenente il lessema riconosciuto, con puntatore al primo carattere
    - yyleng: la lunghezza del lessema
    - yyval: usate per passare parametri con il parser

- Definizioni
  - contiene la definizione di alcune espressioni reoglari nella forma
    - nome      espressione-regolare
  - ad esempio
    - letter [a-zA-z]
    - digit [0-9]
    - number {digit}+
  - da notare le parentesi graffe in {digit}+ e i nomi definiti possono essere usati nelle regole

- Sintassi delle espressioni regolari
  - metacaratteri: * | () + ? [] - ^ . $ {} /\ " % <>
  - {ide}: identificatore di espressione regolare, va inserito tra {}
  - e{n,m}: con n e m naturali: da n a m ripetizioni di e (possibile scrivere anche e{n, }, e{,n}, e{n})
  - [^abc]: tutti i caratteri esclusi a b c
  - \n: newline, \s:spazio generico, \t:tab
  - \*: il carattere *, \ trasforma un metacarattere in un carattere standard
  - "a+b": la sequenza di caratteri a+b (+ non più metacarattere)
  - . : tutti i caratteri meno newline
  - ^: inizio riga
  - $: fine riga

- Funzioni ausiliarie
  - Nella parte "funzioni ausiliarie", si può inserire del codice C da usare nelle regole
  - il codice C da inserire in testa al programma generato
    - viene inserito nella parte "definizioni"
    - tra le parentesi "%{}%"
    - ad esempio
    
    ```
    
    %{
        int val = 0;
    }%

    separatore [\t\n]

    %%
    0   {val = 2*val;}
    1   {val = 2*val+1;}
    {separatore}    {printf ("%d", val); val=0;}
    
    ```

    - tale costrutto sostituisce sequenze rappresentanti numeri binari con il loro valore, scritto in decimale

- L'uso standard
  ```
  cifra             [0-9]
  lettera           [a-zA-Z]
  identificatore    {lettera}({cifra}|{lettera})*
  %%
  {identificatore}  printf("(IDE, %s)", yytext);
  ```

  questo costrutto sostituisce il lessema con i token

- FUnzionamento
  - si considerano tutte le espressioni regolari e si seleziona quello con il match più lungo, la parte lookahead conta nella misura
  - a parità di lunghezza, conta l'ordine delle regole
  - vengono impostate yytext, yyleng e eseguita l'azione
  - nessun matching: regola di default: copio i caratteri input verso l'output

- Esempio del cifrario di Cesare

```
%%
[a-z]   { char ch = yytext[0];
          ch += 3;
          if (ch > 'z) ch -= ('z'+1-'a');
          printf ("%c", ch);
        }

[A-Z]   { char ch = yytext[0];
          ch += 3;
          if (ch > 'Z') ch -= ('Z'+1-'A');
          printf ("%C", ch);
        }
%%
```

- Esempio contacaratteri
  
```
%{
    int charcount=0,linecount=0;
%}

%%
. charcount++;
\n {linecount++; charcount++;}
%%

void yyerror(const char *str)
    {fprintf(stderr,"errore: %s\n", str);}

int yywrap() {return 1;}/*funzioni ausiliarie */

void main(){
    yylex();
    printf("There were %d characters in %d lines\n", charcount, linecount);
}

```

- Funzioni base
  - devono essere definite le funzioni:
    - yyerror(const char *str) viene chamata in condizioni di errore, tipicamente stampa un messaggio di errore usando la stringa argomento
    - yywrap() viene chiamata a fine file di input, tipicamente restituisce o 0 o 1
    - main()
  - con opportune opzioni, possono essere create le versioni default.

- Uso di Lex
  - flex sorgente.l
    - genera un programma C lex.yy.c, compilabile con il comando
  - gcc lex.yy.c -ll
  - in lex.yy.c viene creata una funzione yylex()
    - chiamata dal programma "parser"
    - legge un lessema, ed esegue l'azione corrispondente
  - l'opzione '-ll' necessaria per creare un programma stand-alone
    - collegare alcune librerie
    - con le definizioni main, yywrap, yyerror
    - non necessaria se inserisco nel file lex le relative definizioni
  - Utilizzabile per automatizzare del text editing

- Analisi sintattica (Parsing) - Analizzatore sintattico (Parser)
  - A partire da
    - una grammatica libera da contesto
    - una stringadi token
  - costruisco
    - l'albero di derivazione della stringa, a partire dal simbolo iniziale

- Automi a pila - la teoria
  - Le grammatiche libere possono essere riconosciute da automi a pila non deterministici
    - gli automi con un uso limitato di memoria:
      - insieme finito di stati
      - una pila, in cui inserire elementi finiti
      - passo di computazione, in base a:
        - stato
        - simbolo in testa alla pila
        - simbolo in input
      - decido
        - il nuovo stato
        - sequenza di simboli da inserire nella pila, in sostituzione del presente
        - se è necessario consumare o meno l'input
    - La parola è accettata se alla fine della scansione, si raggiunge una configurazione di accettazione
      - pila vuota
      - stato finale

  - Deterministici - Non deterministici
    - Per gli automi a pila non vale l'equivalenza tra
      - deterministici (ad ogni passo una sola azione)
      - non deterministici (più alternative possibili)
    - Per le grammatiche libere sono necessari, in generale, automi non-deterministici

  - Complessità del riconoscimento
    - un automa a pila non deterministico, simulato tramite il backtracking, porta a complessità esponenziali
    - esistono due algorimti capaci di riconoscere qualsiasi linguaggio libero in tempo O(n^3)
    - un automa a pila deterministico risolve il problema in tempo lineare
  - in pratica
    - la complessità O(n^3) non è accettabile da parte del compilatore
    - ci si limita ai linguaggi riconoscibili da automi a pila deterministici
    - la classe è sufficientemente ricca da contenere quasi tutti i linguaggi di programmazione (C++ è un eccezione x*y;)
  - Vi sono due tipi di automi a pila: LL e LR, due metodi di riconoscimento

- Automi LL(n)
  - costruisce l'albero di derivazione in modo top-down
    - a partire dal simbolo iniziale
    - esaminando al più n simboli della stringa non consumata (lookahead)
    - si determina la prossima regola (esapnsione) da applicare
  - (andremo a verificare se la nostra grammatica ci permette di eliminare una definita stringa, se la stringa rimanente è vuota, viene accettata; al contrario, se ha ancora almeno un elemento, viene rifiutata)
  - più nel dettaglio
    - il parsing guidato da una tabekka che in base:
      - al simbolo in testa alla pila
      - ai primi n simboli di inpu non ancora consumati, normalmente n = 1
    - determina la prossima azione da svolegere tra queste possibilità:
      - applicare una regola di riscrittura, espande la pila
      - consumare un simbolo in input e in testa alla pila (se coincidono)
      - generare segnale di errore (stringa rifiutata)
      - accettare la stringa (quando input e pila vuota)

- Analizzatori LL
  - è relativamente semplice capire la teoria e cotruire automi (anche a mano, se a partire da semplici grammatiche)
  - la costruzione prevede:
    - dei passaggi di riformulazione di una grammatica per ottenere una equivalente (determina lo stesso linguaggio)
    - dalla nuova grammatica, un algoritmo determina:
      - se è LL(1)
      - la tabekka dekke transazioni (descrizione dell'automa)
  - meno generali dell'altra classe di automi LR(n), quelli effettivamente usati nei tool costruttori di parser

- Significato del nome LL(n)
  - esamina la stringa da sinistra a destra
  - costruisci la derivazione Leftmost
  - usa n simboli di lookahead
  - Una derivazione è sinistra (leftmost) se ad ogni passo espando sempre il non terminale più a sinistra
    - S -> aAB -> aDB -> adB -> adb
  - Una derivazione è destra (rightmost) se ad ogni passo espando sempre il non terminale più a destra
    - S -> aAB -> aAb -> aDb -> adb
  - gli automi LL(n) generano sempre la derivazione sinistra

- Analizzatori LR
  - Approccio bottom-up
    - a partire della stringa di input
    - applico una serie di contrazioni (regole al contrario)
    - fino a contrarre tutto l'input nel simbolo iniziale della grammatica
  - Ad ogni passo si sceglie tra un azione di:
    - shift, inserisco un token in input nella pila
    - reduce, riduco la testa della pila applicando una riduzione al contrario
  - Nella pila introduco una coppia <simbolo della grammatica, stato>, l'azione da compiere viene decisa guardando
    - la componenete stato in testa alla pila (non serve esaminarla oltre)
    - n simboli di input, per l'automa LR(n)

- L'automa LR
  - esiste un algoritmo che a partire da
    - una grammatica libera L
  - mi permette di:
    - stabilire se L è LR
    - costruire l'automa a pila relativo
      - insime degli stati
      - tabella delle transizioni
    - come deve comportarsi l'automa ad ogni passo
  - in realtà esistono tre possibili costruzioni

- Varie costruzioni per automi LR
  - Le costruzioni differiscono per
    - complessità della costruzione
    - numero degli stati dell'automa pila generato, con una certa complessità dell'algoritmo
    - ampiezza dei linguaggi riconoscibili
  - In ordine crescente per complessità e ampiezza di linguaggi riconosciuto:
    - SLR(n)
    - LALR(n)
    - LR(n)
  - n parametro, indica il numero di caratteri lookahead, crescndo n si ampia l'insime di linguaggi riconosciuti

- Analizzatori LALR
  - compromesso ideal tra numero di stati e varietà dei linguaggi riconosciuti
  - costruzione piuttosto complessa: da spiegare e da implementare
  - esemprio di applicazione di risultati teorici:
    - Knuth, parser LR
    - DeRemer, SLR and LALR
  - LALR usato dai programmi generatori di parser Yacc, Bison, Happy

- Yacc (Yet Another Compiler-Compiler)
  - generatore di parser tra i più diffusi
  - riceve in input una descrizione astratta del parser:
    - descrizione di una grammatica libera
    - un insieme di regole da applicare ad ogni riduzione
  - Restituisce in uscita:
    - programma C che implementa il parser
      - l'input del programma sono token generati da uno scanner (f)lex
      - simula l'automa a pila LALR
      - calcola ricorsivamente un valore da associare a ogni simbolo inserito nella pila:
        - albero di derivazione
        - altri valori
    - programmi equivalenti per costruire parser in altri linguaggi: ML, Pascal, Jva, Python, Go, Haskell

- Struttura codice Yacc:

```
%{prologo %}
definizioni
%%
regole
%%

funzioni ausiliarie

```

- Una produzione della forma
  - nonterm -> corpo_1 | ... | corpo_k
- diventa in Yacc con le regole:
  - nonterm: corpo_1    {azione semantica_1}
             ...
             | corpo_k  {azione semantica_k}
            ;

- Azione semantica
  - exp : num '*' fact {Ccode}
  - Ccode Codice C che tipicamente
    - a partire dai valori, calcolati in precedenza, per num e fact
    - calcolo il valore da associare ad exp

- Esempio valutaziopne espressioni aritmetiche
  - costruisco un programma che valuta
    - una serie espressioni aritmetiche
    - divise su più righe di input
  - espressioni composte da:
    - costanti numeriche: numeri positivi e negativi
    - le quattro operazioni
    - parentesi
  - valgono le usuali regole di precedenza tra operazioni

- Prologo e definizioni

```
/* PROLOGO */
%{
    #include "lex.yy.c"

    void yyerror (const char *str){
        fprintf(stderr, "errore: %s\n", str);
    }

    int yywrap(){return 1;}
    int main() {yyparse();}

%}

/* DEFINIZIONI */

%token NUM

%left '-' '+'
%left '*' '/'
%left NEG   /* meno unario */

```

- Esempio - Regole

```

%% /* REGOLE E AZIONI SEMANTICHE */
    /* si inizia con il simbolo iniziale */
input:      /* empty */
      | exp '\n\   {printf ("The value is %d \n", $1); }
;

exp : NUM {$$=$1;   }
    | exp '+' exp   {$$=$1+$3;  }
    | exp '-' exp   {$$=$1-$3;  }
    | exp '*' exp   {$$=$1*$3;  }
    | exp '/' exp   {$$=$1/$3;  }
    |'-' exp %prec NEG {$$=-$2; }
    |'(' exp ')'    {$$ =$2;    }
;

```

- Esempio - Codice LEX associato

```
%{
    #include <stdio.h>
    #include "y.tab.h"
%}

%%
[ \t]; //ignora gli whitespace
[0-9]+      {yyval = atoi(yytext); return NUM;}
\n          {return *yytext;}
"+"         {return *yytext;}
[\-\*\/\(\)]{return *yytext;}

```

- Definizione dei token
  - l'insieme dei possibili token definiti nel file Yacc con la dichiarazione %tokent NUM
  - singoli caratteri possono essere token
    - non necessario definirli
    - codficati con il loro codice ASCII
    - gli altri token codificati con intero > 257
  - token diventano i terminali della grammatica libera in Yacc
  - Yacc crea una tabella y.tab.h
    - contiene la lista dei token e la loro codifica come interi
    - lex la dichiarazione (#include "y.tab.h"), viene usata per accerere ai dati in questa tabella

- Funzioni ausiliarie
  - Nel file Yacc è necessario definire le funzioni
    - yyerror procedura invocata in caso di errori nelle sintassi dell'input
      - in input una stringa da usare nel messaggio di errore
    - yywrap chiamata al termine del file di input
      - di deafult restituisc l'intero 0 o 1
      - può essere usata per gerstire più file di input
    - main per creare un programm stand alone
  - La compilazione YACC crea una funzione C
    - yyparser che implementa il parser LALR

- Integrazione tra lex e Yacc (flex e Bison)
  - lex non crea un programma stand alone ma una funzione 
    - yylex() chiamata all'interno di yyparser e restituisce un token ad ogni chiamata e, indirettamente, un valore
      - il token è il valore restituito espicitamente dalla funzione:
        - intero, codifica la classe del lessema
      - il token è diventato un terminale della grammatica usata in Yacc
      - il valore attraverso la variabile yyval globale e condivisa

- Differenze tra YACC e LALR
  - YACC produce codice C che implementa un automa LALR ma:
    - non esiste uno stretto controllo che la grammatica sia LALR:
      - grammatiche non LALR vengono accettate ma:
        - si costruisce un automa a pila dove per alcuni casi più scelte possibili (automa non-deterministico)
        - YACC genera codice che ne sceglie una, esegue solo quella
        - si possono fare scelte sbagliate
        - si possono rifiutare parole valide
    - grammatiche ambigue possono essere usate
      - attraverso la definizione di priorità si possono togliere ambiguità
      - automi non LALR: attraverso le priorità si indicano le scelte da fare
  - il codice C, non solo riconosce la stringa ma la "valuta"
    - valutazione bottom-up, come il riconoscimento
    - risultati parziali inserite nella pila, $$, $1, $2, ... fanno riferimento alla pila
    - la parte "azioni" delle regole specificano che valore associare una parola, a partire dai valori delle sotto-parole
    - attraverso le azioni posso costruire l'albero di derivazione ma anche altro

- Secondo esempio: sintassi di comandi ad un termostato

```

File LEX

%{
  #include <stdio.h>
  #include "y.tab.h"
%}

%%
[0-9]+           { yyval=atoi(yytext); return NUMERO; }
riscaldamento    return TOKRISCALDAMENTO;
acceso|spento    {yyval=strcmp(yytext,"spento");
                  return STATO;}
obiettivo        return TOKOBIETTIVO;
temperatura      return TOKTEMP;
[ \t\n]+         /* ignora spazi bianchi e fine linea */
%%

%{
  #include <stdio.h>
  #include <string.h>

  void yyerror(const char *str){
    fprintf(stderr,"errore: %s\n", str);
  }

  int yywrap(){
    return 1;
  }

  int main() {
    yyparse();
  }

%}

%token NUMERO TOKRISCALDAMENTO STATO TOKOBIETTIVO TOKTEMP

%%

File YACC: regole

comandi:  /*vuoto */
        | comandi comando
        ;

comando: interruttore_riscaldamento
        | imposta_obiettivo
        ;

interruttore_riscaldamento: TOKRISCALDAMENTO STATO
            { if($2)      printf("\t Riscaldamento acceso \n);
              else        printf("\t Riscaldamento spento \n");}
            ;

imposta_obiettivo: TOKOBIETTIVO TOKTEMP NUMERO
                  { printf("\t Temperatura impostata a %d \n", $3); }
                  ;

```

- Modifica tipo YYSTYPE
  - Nel file C le variabili yyval, $$, $1, ... hanno tipo YYSTYPE
    - per default intero
    - posso YYSTYPE con la dichiarazione

```
%union {
  nodeType      *expr;
  int           value;
}
```

  - definisce un tipo union associato alla variabile LEX (yyval) e alla variabile YACC ($$, $1, ...)
  - con le seguenti dichiarazioni, specifico a che tipi componenti sono associati diversi terminali e non terminali
  
```
%token <value>  INTEGER, CHARCON /* terminali */
%type <expr>    expression;  /* non terminali */
  - dichiarazioni da inserire nella parte definizioni (prologo) del file YACC
```

- Creazione del codice

```
lex file.l
yacc -d file.y
cc lex.yy.c y.tab.c -o fileEseguibile

```

  - in alternativa:

```
flex file.l
bison -d file.y
gcc lex.yy.c y.tab.c -o fileEseguibile
```

  - in alternativa, inserisco:

```
#include "lex.yy.c"
```

  - nel prologo yacc, e uso il comando

```
cc y.tab.c -o fileEseguibile
```

    - l'opzione -d forza la creazione del file y.tab.h


<h1 align = "center">Capitolo 3</h1>

# Blocchi e regole di scope

- Nomi 
  - Meccanismi di astrazione
    - astrarre dalla macchina fisica
    - nascondere i dettagli, mettere in evidenza le parti importanti
  - sono fondamentali per gestire la complessità del software
  - uso dei nomi: un meccanismo di astrazione di base che è già presente in assembly
  - il nome: è una sequenza di caratteri usata per denotare altri costrutti
  - permettono una rappresentazione sintetica, astratta, mnemonica di:
    - valori (costanti)
    - locazioni di memoria (variabili)
    - pezzi di codice (procedure)
    - operatori (funzioni di base)
    - ...

- Sintassi
  - i nomi possono essere sequenze di caratteri significativi, non solo identificatori ma anche simboli semplici (+, -, <=, ++, ...)
  - ad esempio:

```
const pi = 3.14;
int x = p + 1;
void f(){...}
```

- Nomi e oggetti denotabili
  - bisogna distinguere tra
    - il nome (stringa di caratteri)
    - l'oggetto rappresentato, denotato
  - in linguistica: significante e significato
  - oggetto denotabile: oggetto associabile a un nome
    - linguaggi di programmazione diversi possono avere oggetti denotabili diversi

- Legame, ambiente
  - legame (biding) : associazione esistente tra nome e oggetto
  - ambiente (enviroment): insieme dei legami esistenti, dipendente da
    - uno specifico punto del programma
  - può dipendere
    - dal codice eseguito in precedenza, la storia del programma in soldoni

- Creazione del binding:
  - possiamo separare tra:
    - nomi definiti dal linguaggio
      - tipi primitivi, operazioni primitive, costanti predefinite
    - nomi definiti dal programmatore
      - variabili, parametri formali, procedure (in senso lato), tipi definiti dall'utente, etichette, moduli, costanti definite dall'utente, eccezioni
  - il biding può essere creato in vari momenti:
    - definizione del linguaggio
    - scrittura del codice
    - caricamento del programma in memoria
    - esecuzione
    - ...
  - ma la distinzione principale è
    - biding statico, avviene prima dell'esecuzione della prima istruzione
    - biding dinamico durante l'esecuzione
  - Ma anche l'oggetto denotato viene incrementalmente definito in vari momenti
    - ad essempio la dichiarazione di una variabile: int a

- Ambienete e store:
  - il valore di una variabile x dipende da due funzioni
    - ambiente: definisce quale locazione di memoria contiene il dato di x
    - store (memoria): determina il dato effettivo
  - accesso al valore in due passaggi
    - i comandi possono modificare lo store (assegnazione), ma non l'ambiente
    - l'ambiente è modificabile attraverso la dichiarazione
  - alcuni linguaggi non prevedono l'esistenza di uno store (funzionali puri)

- Dichiarazione:
  - nomi e legami sono quasi sempre definiti attraverso una
    - dichiarazione: meccanismo (implicito o esplicito) col quale si crea un legame (si modifica l'ambiente)
  
```
int x = 0;
typedef int T;
int inc (T x) {
  return x + 1;
}

```

  - attraverso più dichiarazioni, lo stesso nome può denotare oggetti distinti in punti differenti del programma

- Blocchi
  - nei linguaggi moderni l'ambiente è strutturato
    - blocco: regione programma che contiene dichiarazioni locali a quella regione
  
```
{...}           C, Java
begin ... end   Algol, Pascal
(...)           Lisp
let...in...end  Scheme, ML
```
  - possono essere
    - associati ad una procedura
    - anonimi (o in-line)

- Vantaggi dei blocchi
  - gestione locale dei nomi (quindi solo in un determinato blocco)

```
{
  int tmp = x;
  x = y;
  y = tmp;
}
```
    - definire nomi locali indipendenti da altre dichiarazioni
    - strutturare il programma
  - con un'opportuna allocazione della memoria:
    - è possibile ottimizzare l'occupazione della memoria
    - si permette la ricorsione

- Annidamento
  - i blocchi possono essere annidati:
  
```
{
  int x = 0;
  int y = 2;
  {
    int x = 1;
    x = y;
  }
  write(x);
}

```

  - regola di visibilità
    - una dichiarazione è visibile nel blocco di definizione e in tutti quelli annidati
      - a meno di mascheramento: una nuova dichiarazione per lo stesso nome nasconde, maschera, la precedente

- Ad esempio

```
A:{
  int a = 1;
  B:{
    int b = 2;
    int c = 3;
    C:{
      int c = 4;in
      int d = a + b +c;
      write(d);
    }
  }
  D:{
    int e = a + b + c
    write(e);
  }
}

```

- Utilizzabilità di una dichiarazione
  - tipicamente a partire dalla sua dichiarazione e fino alla fine del blocco,è utilizzabile una dichiarazione all'interno del blocco
  - in alcuni linguaggi, come Modula3, Python, in tutto il blocco
  - dichiarazione come

```
{
  const a = b;
  const b = 3;
  ...
}
```
  possono generare errore o no

- Validità di una dichiarazione
  - a partire dalla dichiarazione
  - in tutto il blocco
  - istruzioni del tipo:

```
const a = 1;
...
procedure foo;
  const b = a;
  const a = 2;

```
  - generano errore in Pascale, C#, dove validità (tutto il blocco) e utilizzabilità (dalla dichiarazione non coincidono)
  - tipicamente a b viene assegnato 1 (C, Java)
  - può essere assegnato 2

- Suddivisione dell'ambiente
  - ambiente locale : assciazioni create all'ingresso del blocco
    - variabili locali
    - parametri formali
  - ambiente globale relativa al programma principale
    - dichiarazioni esplicite di variabili globali
    - associazioni esportate da moduli, ecc
  - ambiente non-locale, non-globale:
    - associazione ereditate da altri blocchi

- Operazioni sull'ambiente
  - creazione associazione nome-oggetto denotato (naming)
    - entrata in un blocco, dichiarazione locale in blocco
  - distruzione associazione nome-oggetto denotato (unnaming)
    - uscita da blocco con dichiarazione locale
  - riferimento oggetto denotato mediante il suo nome (referencing)
    - uso di un nome, nel codice
  - disattivazione associazione nome-oggetto denotato
    - entrata in un blocco con dichiarazione che maschera
  - riattivazione associazione nome-oggetto denotato  uscita da  blocco con dichiarazione che maschera

- Operazioni sugli oggetti denotabili
    - creazione 
    - accesso
    - modifica (se l'oggetto è modificabile)
    - distruzione
  - creazione e distruzione di un oggetto non coincidono con la creazione e la distruzione dei legami per esso
  - alcuni oggetti denotabili come costanti, tipi, non vengono ne creati ne distrutti
    - creazione, distruzione fanno riferimento a dati in memoria (variabili), codice (procedure)

- Eventi base in un biding
  1. creazione di un oggetto
  2. creazione di un legame per l'oggetto
  3. riferimento all'oggetto, tramite il legame
  4. disattivazione di un legmae
  5. riattivazione di un legame
  6. distruzione di un legame
  7. distruzione di un oggetto
    - (1-7) tempo di vita dell'oggetto
    - (2-6) tempo di vita dell'associazione

- Tempo di vita
  - la vita di un oggetto non necessariamente coincide con la vita dei legami per quell'oggetto
  - vita dell'oggetto più lunga di quella del legame
    - passaggio per riferimento, di una variabile, in una procedura
  
```
var A: integer;

procedure P (var X:integer);

  begin 
  ...
  end;

P(A);

```

  - l'esecuzione di P crea un legame tra X e un oggetto esistente prima e dopo l'esecuzione

  - La vita dell'oggetto è più breve di quella del legame
    - il puntatore, punta ad un'area di memoria dinamica dealloccata
    - Dangling reference: riferimenti pendenti, causano errori dato che la zona di memoria è dealloccata

- Regole di scope
  - in presenza di procedure, le rogeole di scope diventano più complesse

```

int x = 10;

void incx(){

  x++;

}

void foo(){

  int x = 0;
  incx();

}

int main(){

  foo();
  write(x);

}

```

  - due alternative:
    - un nome non-locale all procedura incx fa rifermineto a:
      - all prima dichiarazione in blocco che include sintatticamente incx
      - all'ultima dichiarazione "eseguita" prima di incx

- Scope statico
  - un nome non locale è risolto nei blocchi che testualmente lo racchiudono a partire da quelli più interni:
  
```

int x = 0;

void foo (int n){

  x = x + n;

}

foo(2);
write(x);

{

  int x = 0;
  foo(3);
  write(x);

}

write (x);

Output: 2,0,5

```

- Scope dinamico:
  - un nome non-locale è risolto nei blocchi che testualmente lo racchiudono a partire da quelli più interni

```

int x = 0;

void foo (int n){

  x = x + n;

}

foo(2);
write(x);

{

  int x = 0;
  foo(3);
  write(x);

}

write (x);

Output: 2,3,5

```

- Scope statico: indipendenza dalla posizione

```

int x = 10;

void incx(){

  x++;

}

void foo(){

  int x = 0;
  incx();

}

foo();

```

  - incx è dichiarato nello scope della x più esterna
  - incx è chiamato nello scope della x più esterna
  - incx può essere chiamata in molti contesti diversi
  - l'unico modo per incx di comportarsi in modo uniforme è che il riferimento a x nelle due chiamate di incx sia sempre quello più esterno (scope statico)

(con una modifica al codice, al posto di x, y)

  - in questa versione foo usa una diversa variabile locale
    - appunto, y invece di x
  - la modifica di nomi di variabili locali, modifica il comportamento del programma con lo scope dinamico, mentre sullo scope statico non ha alcun effetto

- Scope dinamico: specializzare una funzione
  - supponiamo che "visualizza" sia una procedura che
    - rende a colore sul video un certo testo
    - usa come parametro un costante non-locale (colore)
  - con lo scope dinamico posso modificare il suo comportamento con:

```
{
  const colore = rosso;
  visualizza(testo);
}
```

  - tutte le variabili non locali diventano parametri impliciti della procedura:
    - maggiore flessibilità nell'uso delle procedure
      - simulo il meccaniscmo dei "valori di default"
    - maggior difficoltà nel determinare il comportamento della procedura

- Differenze tra scope statico e dinamico
  - Scope statico (lexical scope):
    - informazione completa dal testo del programma
    - le associazioni sono note a tempo di compilazione
    - principi di indipendenza
    - più complesso da implementare ma più efficiente
    - ad esempio viene fatto da Java, Scheme, C, ...
  - Scope dinamico:
    - informazione derivata dall'eseguzione
    - spesso causa di programmi meno "leggibili"
    - più felssibile: modificare il comportamento di una procedura è possibile farlo in un attimo
    - più semplice da implementare ma meno efficiente
      - esistono implementazioni efficienti ma piuttosto complesse
    - ad esempio viene fatto su alcune versioni di Lisp, Perl, APL, ...

- Aliasing
  - nomi diversi denotano lo stesso oggetto, causato da:
    - passaggio dei parametri a una procedura per riferimento

```

int x = 2;
int foo (ref int y){

  y = y + 1;
  x = x + y;

}

foo(x);
write(x);

```

  - puntatori:
  
```

int *X, *Y;

X = (int *) malloc (sizeof (int ));
*X = 0;
Y = X;
*Y = 1;

write(*X);

```

- Overloading
  - lo stesso nome può avere siginificati diversi a seconda del contesto (accade spesso nei linguaggi naturali)
  - normalmente, per i nomi di alcune funzioni predefinite:
    - somm '+' è classico esempio:
      - somma tra interi
      - somma tra floating-point
      - concatenazione tra strighe
  - il contesto, gli argomento, determinano il significato corretto, overloading costituisce una forma di polimorfismo

- Determinare l'ambiente
  - l'ambiente è dunque determinato da:
    - regole di scope (statico o dinamico)
    - regole specifiche, p.e.
      - quando è visibile una dichiarazione nel blocco in cui compare
    - regole per il passaggio dei parametri
    - regole di biding (shallow o deep)
      - intervengono quando una procedura P è passata come parametro ad un'altra prcedura mediante il formale X

- Costrutto let in Scheme
  - Scheme permette dichiarazioni attraverso diversi costrutti:
    - let
    - let*
    - letrec
  - con diversa validità delle dichiarazioni
    - let: non ricorsiva, creazione in blocco del nuovo ambiente
    - let*: non ricorsiva, creazione sequenziale di una serie di ambienti
    - letrec: ricorsive e mutuamente ricorsive
    - ad esempio:

```

(let ((a 1))
  (let ((a 2)
         (b a))
         b))

vale 1

(let ((a 1))
  let ((a 2)
      (b a))
      b))

vale 2

```

- Mutua ricorsione (di funzioni)
  - viene forzato l'utilizzo di un nome prima che questi venga dichiarato, per essere possibile, devo permettere eccezioni al vincolo
    - un nome deve essere dichiarato prima di essere usato
- Mutua ricorsione di definizione di tipo

```

type lista = ^elem;
     elem = record
          info : integer;
               next : lista;
        end
```

  - posso definire un tipo puntatore prima di aver definito il tipo puntato,
  - come in c:

```

struct child {
  struct parent *pParent;
};
struct parent{
  struct child *children[2];
};

```
  - in struct posso inserire un campo puntatore a struct non ancora definiti

- Dichiarazioni incomplete di tipo:
  - in alcuni linguaggi è permesso la mutua ricorsione:
    - in C ad esempio:

```
typedef struct elem element;
struct elem {
  int info;
  element *next;
}

typedef struct child ch;
struct child {
  struct parent *pParent;
};
struct parent{
  ch *children[2];
}

```
  - in Ada:

```

type elem;
typel lista is access elem;
type elem is record
        info: integer;
        next: lista;
    end

```

- Moduli e information hiding
  - programmi di grosse dimensioni hanno il problema di nascondere parte dei nomi
    - usando per caso lo stesso nome in due parti del codice porta a comportamenti imprevedibili
    - serve anche per evitare i conflitti e porta un cognitive overloading
  - i blocchi annidati (e procedure) risolvono il problema ma non completamente

<h1 align = "center">Capitolo 4</h1>

# Stack di attivazione, Heap

- La gestione della memoria
  - come il compilatore-interprete, organizza i dati necessari all'esecuzione del programma
  - null'uso tipico, il codice ARM prevede la divisione della memoria nei seguenti intervalli consecutivi
  1. 0 - 0xFFF: riservata al sistema operativo
  2. 0x1000 - ww: codice programma (.text)
  3. ww - xx: costanti, variabili del programma principale (.data)
  4. xx - yy: heap per dati dinamici (liste e alberi)
  5. yy - zz: stack per le chiamate di procedura, stack di attivazione

  - il registro r13, sp (stack pointer) punta alla cima dello stack
  - il registro r11, fp (frame pointer) punta al "frame" della procedura in esecuzione

- Allocazione delle memoria
  - tre meccaniscmi di allocazione della memoria:
    - statica: memoria allocata a tempo di compilazione
    - dinamica: memoria allocata a tempo di esecuzione, divisa in
      - pila(stack): oggetti alloccati con la politica LIFO (last in, first out)
      - heap: oggetti alloccati e de-alloccati in qualsiasi momento
    - normalmente un programma usati tutti e tre i meccanismi

- Allocazione statica del programma
  - ad ogni variabile (locale o globale) assegnato un indirizzo univoco
  - le variabili locali di una procedura mantengono il valore anche dopo la fine della procedura

  - svantaggi della allocazione statica completa:
    - non permette la ricorsione 
      - le varie chiamate ricorsive di una stessa procedura devono avere ciascuna uno spazio privato di menoria per:
        - una copia delle variabili locali, ogni chiamata ricorsiva le può modificare in modo diverso
        - informazioni di controll (indirizzo di ritorno)
    - forza ad usare più spazio del necessario:
      - costringe ad allocare spazio per tutte le variabili di tutto il codice
      - di volta in volta solo una piccola parte di queste sono attiva (quelle associate alle procedure aperte)
    - non permette strutture dinamiche
  - vantaggi: accesso diretto, veloce, a tutte le variabili

- Stack di attivazione
  - parte della memoria viene gestita come una pila, destinata a contenere i dati locali delle procedure
    - ad ogni chiamata, dopo aver allocato dello spazio (record di attivazione)
    - lo spazio alloccato, successivamente viene de-allocato all'uscita dalla procedura

- Allocazione dinamica: record di attivazione
  - ogni istanza di procedura in esecuzione possiede un record di attivazione (RdA o frame), ovvero dello spazio di memoria per contenere:
    - variabili locali
    - parametri in ingrsso ed in uscita
    - indirizzo di ritorno
    - link dinamico (al frame della procedura chiamante)
    - link static (al frame della procedura genitore, non sempre presente)
    - risultati intermedi
    - salvataggio dei registri

- Stack di attivazione 
  - analogamente, ogni blocco, con dichiarazione, può avere un suo record di attivazione (più semplice, meno informazioni di controllo)
    - variabili locali
    - risultati intermedi
    - link dinamico (al frame della procedura chiamante)
  - stack di attivazione:
    - una pila (LIFO) contenete i RdA
    - la struttura dati naturali per gestirli

- Esempio di gesione della memoria con blocchi anonimi:

```
{
  int x = 0;
  int y = x + 1;
  {
    int z = (x + y) * (x - y);
  };
};

```

  - push record con spazio per x, y
  - settare valori di x, y
    - push record blocco interno, allocazione per z ed eventualmente per risultati intermedi
    - settare il valore per z
    - pop record per blocco interno
  - pop record per blocco esterno
  - //Nota: nel blocco interno l'accesso alle variabili non locali x e y, vanno cercate in blocchi esterni (va necessariamente risalita la catena dinamica)

- Accesso ai dati nello stack di attiavazione (versione semplificata per blocchi anonimi)
  - dati (variabili, risultati intermedi) locali del blocco in esecuzione, si usa
    - il Frame Pointer (FP): 
      - punta all'indirizzo base dell'ultimo frame (RdA)
      - i dati dell'ultimo frame sono accessibili per offset rispetto allo FP:
        - indirizzo_dato = FP + offset
        - offset determinabile staticamente, a tempo di compilazione
  - i dati non locali al blocco in esecuzione invece:
    - necessitano la derminazione dell'indirizzo base del Rda del dato
    - link dinamico (o control link, puntatore di catena dinamica)
      - puntatore al precedente record sullo stack
    - risalgo la catena dei link

- Gestione della pila
  - per la gestione dello stack di attivazione uso anche
    - Stack Pointer (SP)
      - punta alla fine della pila, primo spazio di memoria disponibile

- Gestione dei blocchi in-line
  - operazioni per la gestione (aggiornamento di FP, SP, elink dinamici)
    - Ingresso nel blocco: Push, allocazione dello spazio e scrittura dei link
      - link dinamico del novo RdA := FP
      - FP = SP
      - SP = SP + dimensione nuovo del RdA
    - Uscita dal blocco: Pop, Elimina l'ultimo RdA, recupera spazio e ripristina i puntatori
      - SP = FP
      - FP := link dinamico del RdA tolto dallo stack

- Nella pratica
  - in molti linguaggi si preferisce evitare l'implementazione a pila per i blocchi anonimi
    - tutte le dichiarazioni dei blocchi annidati sono raccolte dal compilatore
    - viene allocato spazio per tutti i blocchi
    - spreco minore di memori
    - maggiore velocità: meno azioni sulla pila

- Esempio di corsione, stack di attivazione indispensabile

```
int fact (int n){

  if (n <= 1)
    return 1;
  else
    return n * (fact ( n - 1 ));

}
```
  - nel RdA troviamo:
    - i parametri di ingrsso: n
    - parametri in uscita - risultato: fact(n)
    - link statici, dinamici e indirizzo di ritorno, back_up registri processore
  - tanti RdA quanto il valore iniziale di n

- gestione dello stack di attivazione
  - chiamata procedura
    - allocazione RdA
    - passaggio parametri
    - inizializzaione varibili locali 
    - gestione inrmazione di controllo: link statici, dinamici
    - registri: salvataggio
  - uscita procedura
    - passaggio risultato
    - gestione informazione di controllo
    - registri: ripristino
    - deallocazione RdA

- Gestione dello stack di attivazione
  - la gestione della pila è compiuta mediante:
    - sequenza di chiamate - chiamate
    - prologo - chiamato
    - epilogo - chiamato
    - sequenza di ritorno - chiamante
  - la ripartizione tra chiamante e chiamato è in parte arbitraria
    - inserire il codice nella procedura chiamata porta a generare meno codice
      - le istruzioni sono presenti una volta sola, al posto di tante volte quante sono le chiamate alla procedura

- Allocazione dinamica con heap
  - Heap: zona di memoria le cui parti (blocchi) possono essere allocate (e de-allocate) a seconda della necessità
  - necessario quando il linguaggio permette:
    - tipi di dato dinamici
    - oggetti di dimensioni variabili
    - oggetti che sopravvivono alla prcedura che gli ha creati
  - la gestione della heap, avendo i problemi con:
    - la gestione efficiente dello spazio: porta a frammentazione
    - velocità di ricerca spazi liberi

- Heap suddivisa in blocchi di dimensione fissa
  - in originie: tutti i blocchi collegati nella lista libera
  - allocazione di uno o più blocchi
  - deallocazione: restituzione alla lista libera
  - il vincolo della dimensione fissa, rende il meccaniscmo troppo rigido:
    - non fornisce blocchi di elevata dimensione per strutture dati contigue di dimensione elevata
    - non posso implementare malloc di c

- Heap: blocchi di dimensione variabile
  - inizialmente: la lista è libera e costituita ad unico blocco, poi la lista viene formata da blocchi di dimensione variabile
  - allocazione: determinare un blocco libero della dimensione opportuna
    - che viene diviso in:
      - parte assegnata
      - resto blocco libero
  - de-allocazione: restituzione del blocco aggiunta alla lista dei blocchi liberi

- Gestione della heap
  - problemi
    - le operazioni devono essere efficineti 
    - vanno evitati gli sprechi di memoria
      - frammentazione interna
      - frammentazione esterna
  - frammentazione: è presente anche nella gestione della memoria virtuale tramite segmentazione
    - su uno spazio di memoria lineare
    - vengono assegnati blocchi di dimensione varibile
    - possono essere liberati
  - le due soluzioni hanno problemi simili

- Frammentazione
  - frammentazione interna: lo spazio richesto è X
    - viene allocato un blocco di dimensione Y > X
    - lo spazio Y - X è sprecato
    - causa meno problemi della frammentazione esterna
  - frammentazione esterna
    - la continua allocazione e deallocazione di blocchi porta alle creazioni di blocchi liberi di piccole dimensioni
      - differenze tra il blocco libero usato e lo spazio efferttivamente usabili, non è possibile allocare un blocco di grandi dimensioni, anche con tanta memoria libera

- Gestione della lista libera: unica lista
  - ad ogni richiesta di allocazione: si cerca il blocco di dimensione opportua
    - first fit: il primo blocco è abbastanza grande
    - best fit: quello di dimensione più piccola, tra quelli sufficienti
  - se il blocco scelto è abbastanza più grande di quello che serve viene diviso in due e la parte inutilizzata è aggiunta alla LL
  - Quando un blocco è de-allocato, viene restituito all LL (se un blocco adiacente è libero i due blocchi sono "fusi" in un unico blocco)

- Best fit o first fit?
  - Vantaggi - svantaggi
    - first fit: più veloce, occupazione peggiore della memoria
    - best fit: più lento, miglior sfruttamento della memoria

- Gestione della lista libera: più liste
  - con unica LL costo allocazione lineare nel numero di blocchi liberi
  - liste libere multiple, per migliorare i tempi di ricerca:
    - ogni lista contiene blocchi liberi di dimensione simile
    - prendo il primo blocco disponibile nella lista opportuna

- Buddy system: n liste:
  - la lista k-esima ha blocchi di dimensione 2^k
  - se si desidera un blocco di dimensione 2^j, e la lista relativa è vuota:
    - si cerca un blocco, nella lista successiva di dimensione doppia, viene diviso in due parti
    - se anche la lista successiva è vuota, la procedura si ripete ricorsivamente
  - quando un blocco di 2^k è dealloccato, viene riunito alla sua altra metà (buddy), se disponibile

- Implementazion delle regole di scope
  - per il recupero dei dati non locali nello stack di attivazione, ci sono:
    - scope statico con catena statica e display
    - scope dinamico con il solo SdA, A-list e la tabella centrale dell'ambiente (CRT)

- Scope statico
  - considerando il programma:

```

int x = 10;

void incx(){

  x++;

}

void foo(){

  int x = 0;
  incx();

}

foo();
incx();

```

  - incx viene chiamato due volte, indirettamente tramite foo e successivamente direttamente
  - incx accede sempre alla stessa variabile x
  - x è memorizzato in un certi RdA
  - il problema sta a determinare di quanti RdA sia necessario scendere nella pila

- Scope statico: legami validi
  - i legami validi sono quelli definiti
    - nella procedura corrente
    - nella procedura genitore
    - nel genitore del genitore ...
  - a tempo di compilazione, per ogni variabile x in ogni procedura P si:
    - quale procedura antenato Q contiene la dichiarazione di x a cui far riferimento
    - di quanti Q è antenato di P
    - la posizione relativa di x nei record di attivazione di Q
  - A tempo di esecuzione, nella procedura P per accedere a x devo
    - accedere all'ultimo RdA di Q attivo
    - partendo dall'indirizzo base del RdA di Q, determino la posizione di x

- Link statico
  - per poter accedere ai RdA degli antenati:
    - ogni RdA contiene un puntatore all'ultimo RdA del genitore
    - chiamato link statico:
  - attraverso il link statici definiscono catena statica: la lista dei RdA degli antenati
    - a tempo di compilazione si determina la posizione
    - non serve memorizzare il nome delle variabili negli RdA

- Riassumendo:
  - link dinamico (procedura chiamante) dipende dalla sequenza di esecuzione del progemma, definisce la catena dinamica
  - link statico (procedura genitore) dipende dalla struttura delle dichiarazioni di procedure, definisce la catena statica

- Creazione di un link statico
  - la procedura chiamante Ch determinare il link statico della procedura chiamata S
    - lo passa ad S, che lo inserisce nel suo RdA
    - come Ch determina il link statico da passare a S?
      - quando Ch chiama S sa se la definizione di S è:
        - nelle dichiarazioni di Ch (profondità k = 0), passa il Frame pointer come link statico
        - nelle dichiarazioni di un n-esimo avo di Ch (profondità k = n) percorre la catena statica per n passi, per determinare il link statico da passare
        - in altre posizioni S non sarebbe visibile

- Tentativo di ridurre i costi: il display
  - l'accesso a variabili non locali, comporta la scansione della catena di link statici
    - costo proporzionale alla profondità
    - si può ridurre questo costo ad un singolo accesso usando il display:
  - un unico array contenente il link ai RdA visibili al momento attuale
    - i-esimo elemento dell'array: il puntatore al RdA sottoprogramma
      - di livello di annidamento statico i
        - programma principale: annidamento statico 0
        - procedura definita nel programma principale: annidamento statico 1
        - ...
      - ultima istanza attiva (se, per ricorsione, ci sono più istanze)
  - per accedere ad una variabile x con annidamento statico i, l'i-esimo elemento nel display determina il RdA contenente x

- Come si aggiorna il display
  - la procedura chiamata P, nel preambolo
    - sa la posizione nel display dove inserire il puntatore al suo RdA
    - salva (nel suo RdA) il valore originario
    - inserisce nel display il puntatore al suo RdA
    - al termine della chiamata, P ripristina il valore originario
  - l'algoritmo è semplice ma la correttezza non è banale:
    - ogni procedura, all'ingresso aggiorno il display, in un unica posizione; il display modificato corretto per l'ambiente della procedura
    - alla sua uscita ripristina il valore originario, il display torna ad essere corretto per il chiamante
    - anche se chiamate, una sequenza di chiamate di procedura
      - modifica il display in molte posizione
      - al loro termine viene ripristinato il valore originario

- Nella pratica
  - Nella statistica del codice la catena statica è raramente di lunghezza > 3, è raramente usato nelle implementazioni moderne

- Scope dinamico
  - con lo scope dinamico l'associazione nome-oggetto denotabili dipendono
    - dal flusso del controllo a run-time
    - dall'ordine con cui i sottoprogrammi sono chiamati
  - la regola generale è semplice:
    - il legame valido per il nome n
    - è determinato dall'ultima dichiarazione del nome n eseguita

- Implementazione ovvia
  - memorizzare i nomi negli RdA
    - a differenza dello scope statico dove non è necessario memorizzarli
  - ricerca per nome scendendo nello stack di attivazione

- Variante: Association List (A-List)
  - le associazioni sono raggruppate in una struttura apposita
    - una lista di legami validi
    - aggiornata con lo SdA
  - costi delle A-List
    - molto semplice da implementare
    - occupazione memoria:
      - nomi presenti esplicitamente
    - costo di gestione
      - ingresso/uscita da blocco
        - inserzione/rimozione di blocchi sulla pila
    - tempo di accesso
      - sempre lineare nella profondità della A-List
  - possiamo ridurre il tempo d'accesso medio, aumentando il tempo di ingresso/uscita da blocco

- Tabella centrale dei riferimenti, CRT
  - Evita le lunghe scansioni della A-list
  - Una tabella mantiene tutti i nomi distinti del programma
    - se nomi noti, accesso staticamente in tempo costante
    - altrimenti, accesso tramite hash
  - ad ogni nome è associata la lista delle associazioni di quel nome
    - la più recente è la prima
    - le altre, disattivate e per uso futuro
  - accesso agli identificatori, in tempo costante

- Pila nascosta
  - seconda possibile implementazione
    - tabella attuale
    - pila dei legami sospesi, una singola pila in cui inserisco i legami nascosti da aggiornare in ingresso uscita dai blocchi

- Costi della CRT
  - Gestione più complessa di A-list
  - costo di gestione
    - ingresso/uscita da blocco
      - manipolazione delle liste dei nomi dichiarati nel blocco
  - tempo di accesso
    - costante (due accessi indiretti)
  - confronto con A-list
    - si riduce il tempo d'accesso medio
    - si aumenta il tempo di ingresso/uscita dal blocco

- Ottimizzazione
  - posso inserire in CRT solo i nomi locali usati esternamente alla procedura
  - ai nomi locali, si accede direttamente tramite RdA

<h1 align = "center">Capitolo 5</h1>

# trutture di controllo (espressioni, assegnazione, costrutti per il controllo di flusso, ricorsione)

- Strutturare il controllo
  - codice macchina: sequenza di istruzioni elementari, istruzioni di salto
  - linguaggi di programmazione: si vuole astrarre su controllo
  - definizioni più
    - strutturate
    - compatte
    - leggibili

- Strutture per il controllo del flusso
    - espressioni
      - notazioni
      - meccaniscmi di valutazione
    - comandi
      - assegnamento
    - sequenzializzazione di comandi
    - test, condizionali
    - comandi iterativi
    - ricorsione
    - chiamate di funzione
    - gestione delle eccezioni
    - esecuzione concorrente
    - scelta non deterministica
  - i paradigmi di programmazione (imperativo, funzionale) differiscono principalmente nei meccaniscmi di controllo adottati
    - imperativo: assegnazione, sequenzializzazione, iterazione
    - dichiarativo: valutazione di espressioni, ricorsione

- Espressioni
  - espressioni conteneti: identificatori, letterali, operatori, funzioni valutate dalla macchina producono:
    - un valore
    - un possibile effetto collaterale
    - possono divergere

- Notazioni
  - principali differenze:
    - posizione dell'operatore: infissa, prefissa, postfissa
    - uso delle parentesi
    - alcuni esempi:
      - infissa: a + b * c
      - funzione matematica: add(a, mult(b, c))
      - linguaggi funzionali (Cambridge polish): (+ a(* b c))
      - omissione di alcune parentesi (come in haskell): + a (* b c)

- Notazione
  - Parentesi
    - Scheme (cambridge polish): parentesi necessarie per forzare la valutazione, non possono essere aggiunte arbitrariamente
    - Haskell: parentesi usate per definire un ordine di valutazione
  - Zucchero sintattico:
    - scrittura alternativa di un espressione (comando) per migliorare la leggibilità
      - Haskell: a + b al posto di '+' a b    '+'(a, b)
      - C++: a + b al posto di a. + b         a.operator+ (b)

- Notazione polacca
  - esistono notazioni che non necessitano di parentesi
    - prefissa (polacca diretta) + a * b c
    - postfissa (polacca inversa) a b c * +
  - ottenuto tramite una visita anticipata, o differita, dell'albero sintattico
  - le parentesi possono essere omesse solo se l'arità delle funzioni è prefissata
  - esempi di arità variabile:
    - Scheme: (+ 1 2 3)
    - Erlang: funzioni diverse, con stesso nome, distinte per l'arità
  - funzioni di arità arbitraria, parentesi indispensabili

- Notazione polacca
  - poco leggibili e poco usate nei linguaggi di programmazioni: calcolatrici tascabili, Forth
    - polacca diretta, giustificazione: nella notazione a funzione argomenti f(x, y) si possono omettere ( , ) se conosciamo l'arità di ogni funzione
    - polacca inversa: descrive la valutazione di un'espressione con lo stack degli operandi, presente in java bytecode, e in altri linguaggi intermedi: CLI 2 + 3 * 5 diventa: 2 3 5 * +
      - push 2; push 3; push 5; mult; add;

- Sintassi delle espressioni: notazione infissa
  - i linguaggi di programmazione tendono a usare le notazioni della scrittura matematica:
    - notazione infissa
    - regole di precedenza tra gli operatori per risparmiare parentesi ma non sempre ovvio il risultato della valutazione:
      - a + b * c ** d ** e / f     ??
      - A < B and C < D             ??
      - in Pascal Errore (se A, B, C, D non sono tutti booleani)

- Regole di precedenza
  - ogni linguaggio di programmazione fissa le sue regole di precedenze tra operatori
    - di solito operatori aritmetici hanno la precedenza su quelli di confronto che hanno precedenza su quelli logici (non in Pascal)
    - numerose regole e 15 livelli di precedenze in C e i suoi derivati (C++, Java, C#)
    - 3 livelli di precedenze in Pascal
    - APL, Smalltalk: tutti gli operatori hanno eguale precedenze: si devono usare le parentesi
    - Haskell permette di definire nuove funzioni con la notazione infissa e specificarne precedenza e associatività infixr 8 ^

- Regole di associatività
  - oltre al livello di precedenze, bisogna specificare in che ordine eseguire le operazioni di uno stesso livello
    - normalmente a sinistra: 15 + 4 - 3      (15 + 4) - 3
    - in alcuni casi a destra: 5 ** 2 ** 3    5 ** (2 ** 3)
  - non sempre ovvie: in APL, tutto associato a destra, ad esempio
    - 15 + 4 - 3
  - è interpretato come
    - 15 + (4 - 3)

- Ricapitolando
  - le regole di precedenza e associatività
  - poco uniformi tra i vari linguaggi
  - in alcuni casi piuttosto complesse
- nella pratica: se non si conoscono bene le regole, o si è insicuri, meglio inserire parentesi

- Rappresentazione ad albero
  - la rappresentazione naturale di un espressione è un albero
  - le espressioni vengono linearizzate per necessità di scrittura
    - (a + f(b)) * (c + f(b))
  - la rappresentazione ad albero generata dall'analizzatore sintattico, per poter poi lavorare sull'espressione
  - a partire dall'albero sintattico il compilatore produce il codice oggetto, oppure l'interprete valuta l'espressione

- L'ordine di valutazione delle sttoespressioni
  - le regole di precedenze, parentesi, o rappresentazione ad albero
    - definiscono precedenze e associatività
    - non definiscono un ordine temporale di valutazione delle sottoespressioni
      - (a + f(b)) * (c + f(d))
  - ordine importante per
    - effetti collaterali
    - ottimizzazione

- Effetti collaterali
  - la valutazione di un'espressione restituisce un valore ma modifica lo stato del programma
  - esempio tipico: la valutazione di un'espressione
    - porta a chiamate di funzioni
    - le funzioni modificano la memoria
  - nell'esempio
    - (a + f(b)) * (c + f(d))
  - il risultato della valutazione da sinistra a destra può essere diverso di quello da destra a sinistra

- Ordine di valutazione
  - in Java è specificato chiaramente l'ordine (da sinistra a destra)
  - C non specifica l'ordine di valutazione, compilatori diversi si comportano in modo diverso

```
int x = 1;
printf("%d \n", (x++) * (++x));
x = 1;
printf("%d \n", (++x) * (x++));
```
  - L'ordine di valutazione ha influenza sul tempo di esecuzione, specie nei processori attuali (computazione parallela, accesso lento alla memoria)
    - C preferisce l'efficienz alla chiarezza, affidabilità
    - Java il contrario

- Ottimizzazione e ordine di valutazione
  - alcuni compilatori possono modificare l'ordine di valutazione per ragioni di efficienza;
    - a = b + c
    - d = c + e + b
  - può essere riarrangiato in
    - a = b + c
    - d = b + c + e
  - ed eseguito come
    - a = b + c
    - d = a + e
  - in alcuni casi, queste modifiche portano a modifiche nel risultato finale

- Evitare le ambiguità dovute all'ordine di valutazione
  - in alcuni linguaggi non sono ammesse funzioni con effetti collaterali nelle espressioni (Haskell)
  - altri linguaggi specificano l'ordine di valutazione (Java)
  - in altri linguaggi, per evitare che il risultato dipenda da scelte del compilatore, forzando un ordine di valutazione, possono spezzare l'espressione
    - y = (a + f(b)) * (c + f (d))
    - riscritta come
    - x = a + f(b);
    - y = x * (c + f(d));

- Effetti collaterali
  - svantaggi: senza effetti collaterali la valutazione delle espressioni diventa
    - indipendente dall'ordine di valutazione
    - più vicina alla intuizione matematica
    - spesso più facile da capire
    - più facile verificare, provare, correttezza
    - più facile da ottimizzare per il compilatore (preservando il significato originale)
  - gli effetti collaterali possono essere utili:
    - gestire strutture dati di grandi dimensioni, funzioni che operano su matrici
    - definire funzione che generano numeri casuali rand()

- Linguaggi funzionali puri
  - in linguaggi funzionali puri, la computazioni si riduce a:
    - la solo valutazione di espressioni
    - senza effetti collaterali

- Aritmetica finita
    - numeri interi: limitati
    - numeri floating point: valori limitati e precisione limitata
  - conseguenze: errori di overflox, errori di arrotondamento ma anche le usuali identità matematiche non valgono per l'aritmetica dei calcolatori
    - a + (b + c) != (a + b) +c
    - interi: la prima espressione genera errore di overflow la seconda no
      - a = -2; b = maxint; c = 2;
    - floating point: l'errore nelle due valutazioni è differente
      - a = 10 ** 15; b = -10 ** 15; c = 10 ** (-15)

- Valutazione eager - lazy, operandi non definiti
  - non sempre tutte le sottoespressioni sono valutate, ad esempio le espressioni if then else
    - C, Java     a == 0 ? b : b/a
    - Scheme      (if (= a 0) b (/ b a))
    - Python      b if a == 0 else b/a
  - presuppone una valutazione lazy: si valutano solo gli operandi strettamente necessari

- Valutazione corto circuito
  - alcuni operatori booleani (and, or) ammettono una valutazione lazy
    - detta corto-circuito
    - se la valutazione del primo argomento è sufficiente a determinare il risultato non valuto il secondo
    - ordine di valutazione fondamentale per determinare il risultato, di solito da sinistra a destra, a == 0 || b/a > 2
  - se uguale a 0
    - con la valutazione corto circuito restituisce true
    - valutazione eager genera errore
    - anche una valutazione corto circuito da destra a sinistra genera errore
  - restituisce immediatamente il risultato
    - se il primo argomento di un or (||) è true restituisce true
    - se il primo argomento di un and (&&) è false restituisce false
  - alcuni linguaggi, Ada, hanno due versioni degli operatori booleani
    - short circuit: and then or else
    - eager: and or
    - sono utili se la valutazione delle espressioni ha un effetto collaterale necessario alla computazione
  - stesso codice (ricerca valore 3 in una lista)
  - si comporta in maniera diversa a seconda del linguaggio
    - C, valutazione corto circuito: corretto
  
```
p = lista
while (p && p -> valore != 3)
  p = p -> next

```
  - pascal, valutazione eager: genera errore

```

p := lista;
while (p <> nil) and (p^.valore <> 3) do
  p := p^.prossimo;

`p -> next` equivalente a `*p.next`

```

- Comandi
  - parti del codice la cui valutazione tipicamente
    - non restituisce un valore
    - ha un effetto collaterale (modifica dello stato)
  - i comandi
    - sono tipici del paradigma imperativo
    - non sono presenti (o pochissimo usati) nei linguaggi funzionali e logici
    - in alcuni casi restituiscono un valore (ad esempio = in C)

- Assegnamento
  - comando base dei linguaggi imperativi
  - inserisce in una locazione, cella, un valore ottenuto valutando un'espressione
    - X = 2
    - Y = X + 1
  - notare il diverso ruolo svolto da X ne i due assegnamenti:
    - nel primo, X denota una locazione, è una l-value
    - nel secondo, X denota il contenuto della locazione precedente, è un r-value
  - in generale
    - exp1 := exp2
      - valuto exp1 per ottenere un l_value (locazione)
      - valuto exp2 per ottenere un r-value, valore memorizzabile
      - inserisco il valore nella locazione
  - l-value può essere definito da un espressione complessa
    - esempio (in C)
      - (f(a) + 3) - > b[c] = 2
        - f(a) puntatore ad un elemento in un array di puntatori a strutture A
        - la struttura A ha un campo b che un array
        - inserisco 2 nel campo c-esimo dell'array

- Diversi significati del termine
  - la parte sinistra di un assegnazione è tipicamente una variabile
  - tralasciando l'uso matematico del termine "variabile", in informatica, a seconda dei contesti, esistono più significati:
    - linguaggi imperativi: identificatore a cui è associata una locazione, dove troviamo il valore modificabile
    - linguaggi funzionali (Lisp, ML, Haskell, Smalltalk): un identificatore a cui è associato un valore, non modificabile, coincidente con la nozione di costante per linguaggi imperativi
    - linguaggi locici: una variabile rappresenta un valore indefinito, la computazione cerca le corrette istanziazioni delle variabili, quelle che rendono vero un certo predicato

- Modello a valore
  - diversi modi per:
    - implementare le variabili
    - implementare l'assegnamento
    - definire cosa denotano le variabili
  - nel modello a valore:
    - alle variabili l'ambiente (il compilatore) associa una locazione di memoria
      - il valore contenuto nella locazione, denota il valore associato
      - ma alcuni tipi di dato, il valore associato può essere a sua volta una locazione
      - un esempio sono: es. tipi array in C X[Y] = 3
  - l'assegnazione modifica il valore associato

- Modello a riferimento:
    - l'ambiente associa ad una variabile una locazione di memoria
    - nella locazione troviamo un riferimento (una seconda locazione)
    - contenente il valore
  - per accedere al valore
    - devo dereferenziare la variabile
    - dereferenzazione implicita
  - l'assegnazione modifica:
    - il riferimento
    - non il contenuto dello store
  - dopo l'assegnamento X = Y, X e Y fanno riferimento alla stessa locazione di memoria, contenente un valore condiviso
    - ogni variabile è, in un certo senso, un puntatore
    - usata con una sintassi diversa dai puntatori

- In alcuni linguaggi i due modelli si possono mischiare
  - a seconda del tipo della variabile
    - Java
      - tipi primitivi (interi, booleani, ecc.):
        - modello a variabile
        - assegnamento copia un valore nella memoria
      - tipi riferimento (tipi classe, array)
        - modello a riferimento
        - aseegnamento crea una condivisione dell'oggetto

- Python
  - due categorie di tipi
    - immutabili: tipi semplici: interi, booleani, enuple
    - mutabili: tipi complessi: vettori, liste, insiemi
  - assegnamento:
    - immutabili: viene creata una nuova istanza dell'oggetto, non si modifica la memoria, ma analogo l'effetto
    - mutabili: viene condivisa, eventualmente modificata, l'istanza esistente
      - esempi in python
        - tupla1 = (1, 2, 3) //le tuple sono immutabili
        - lista1 = [1, 2, 3] //liste sono mutabili
        - tupla2 = tupla1
        - lista2 = lista1
        - tupla2 += (9, 9, 9)
        - lista2 += [9, 9, 9]
        - print 'tupla1 = ', tupla1 // output (1, 2, 3)
        - print 'tupla2 = ', tupla2 // output (1, 2, 3, 9, 9, 9)
        - print 'lista1 = ', lista1 // output [1, 2, 3, 9, 9, 9]
        - print 'lista2 = ', lista2 // output [1, 2, 3, 9, 9, 9]

- Vantaggi - svantaggi modello a riferimento
  - vantaggi
    - non duplico strutture dati complesse
    - tutte le variabili sono puntatori
      - utile nelle funzioni polimorfe, la stessa funzione agisce su una varietà di tipi di dato, come ad esempio: la funzione che ordina un vettore
  - svantaggi
    - si creano aliasing che oscurano il comportamento del programma
    - accesso ai dati indiretto

- Linguaggi funzionali (non puri come ML)
  - distinguo locazioni da contentu:
    - concettualmente più chiaro ma più prolisso
    - accedo al contenuto esplicitamente
      - val x = ref 2 (* x denota una locazione contenente 2 *)
      - val x2 = x (* x e x2 denotano la stessa locazione *)
      - val x3 = !x (* x3 denota 2 *)
      - val _ = x := (!x) + 7 (* il contenuto di x, x2 è ora 9, x3 denota sempre 2 *)

- Ambienete e memorai
  - nei linguaggi imperativi distinguiamo tra:
    - ambiente: nomi -> valori denotabili
      - definito, modificato dalle dichiarazioni
    - memoria: locazione -> valori memorizzabili
      - modificato dalle istruzioni di assegnamento
  - distinguiamo tra tre classi di valori:
    - valori denotabili (quelli a cui si può associare un nome)
    - valori memorizzabili (si possono inserire nello store esplicitamente con assegnamento)
    - valori esprimibili (risultato della valutazione di una espressione)

- Valori denotabili, demorizzabili, esprimibili
  - le tre classi si sovrappongono ma non coincidono
    - procedure: denotabili, a volte esprimibili, quasi mai memorizzabili
    - locazioni: denotabili, esprimibili, memorizzabili con l'uso esplicito dei puntatori
  - linguaggi imperativi, i valori denotabili includono le locazioni
    - variabili nomi che denotano locazioni
  - linguaggi funzionali puri:
    - non esistono valori memorizzabili 
    - le locazioni non sono dentabili o esprimibili
  - linguaggi funzionali
    - le funzioni sono valori esprimibili
    - Java, C#, Python, Ruby permettono la programmazione funzionale

- Operazioni di assegnamento
  - A[index(i)] := A[index(i)] + 1
  - realizzate in maniera standard pongono i seguenti problemi
    - scarsa leggibilità
    - efficienza: doppio computazione dell'indice index(i), doppio accesso alla locazione
    - side-effect: se index(i) causa un effetto collaterale, questo viene ripetuto
  - si definiscono degli operatori di assegnamento, più sintetici
    - X = X + 1 diventa     X += 1 (C, Java, ...)
    - X := X + 1 diventa    X +:= 1 (Algol, Pascal, ...)
  - in C, Java, ... una pletora operatori di assegnamento, incremento/decremento
    - +=, -=, *=, /=, %=, &=, |=
    - somma, sottrazione, moltiplicazione, divisione, resto, bit-wise and, bit-wise or
  - incremento, decremento di una unità
    - x++, x--
  - nel caso la variabile incrementata sia un puntatore C ad un array di oggetti
    - l'incremento viente moltiplicato per la dimensione degli oggetti puntati

- Espressione e comandi
  - sintatticamente si distingue tra comandi ed espressioni
    - comandi: è importante l'effetto collaterale
    - espressioni: è importante il valore restituito
  - in alcuni linguaggi la distinzione comando, espressione risulta sfumata:
  -   i due aspetti, effetto collaterale e risultato coesistono
  -   dove è previsto un comando posson inserire un'espressione e viceversa

- C, Java, C#
  - comandi separati da espressioni:
    - if (a == b) {x = 1} else {x = 0};
    - x = (a == b) ? 1 : 0;
  - ma
    - espressioni possono comparire dove ci si aspetta un comando
    - assegnamento (=) permesso nelle espressioni
      - l'assegnamento restituisce il valore assegnato, posso scrivere:
        - a = b = 5 interpretato come a = (b = 5)
        - if (a == b) { ... } naturalmente, ma anche
        - if (a = b) { ... } che può generare errore di tipo
    - (a == b) ? x = 1 else x = 0; //legito
    - (a == b) ? {x = 1} else {x = 0}; //genera errore
    - un singolo comando può essere visto come una espressione un blocco o no

- Il pre e post incremento
  - il comando di incremento, ++ può essere visto come un espressione con effetti collaterali,
    - distinguo tra due versioni delle espressione di incremento, pre e post incremento
      - ++x: pre-incremento, esegue x = x + 1 restituisce il valore incrementato
      - x++: post-incremento, esegue x = x + 1 restituisce il valore originario
    - eseguono la stessa assegnazione ma restituiscono un diverso valore
    - similmente esistono: (x--) (--x)

- Algol68, tutto è un'espressione
  - in Algol68: expression oriented
    - non c'è nozione separata di comando
    - ogni procedura restituisce un valore

```
begin
  a := begin f(b); g(c) end;
  g(d);
  2 + 3
end
```

- scelta opposta - Pascal:
  - comandi separati da espressioni
  - un comando non può comparire dove è richiesta un'espressione e viceversa

- Comandi per il controllo sequenza
  - comandi per il controllo sequenza esplicito
    - ;
    - blocchi
    - goto
  - comandi condizionali
    - if
    - case
  - comandi iterativi
    - iterazione indeterminata (while)
    - iterazione determinata (for, foreach)

- Comando sequenziale
  - C1; C2;
    - è il costrutto di base dei linguaggi imperativi
    - sintassi, due possibile scelte:
      - ; separatore di comandi, non serve inserirlo nell'ultimo comando
      - ; terminatore di comandi, devo inserirlo anche nell'ultimo comando C e derivati usano questa sintassi
  - Algol68, C: quando un comando composto è visto come espressione il valore è quello dell'ultimo comando

- Blocco
  - sintassi
    - {   begin
    - ... ...
    - }   end
  - trasformo una sequenza di comandi in un singolo comando, raggruppo una sequenza di comandi
  - posso usarlo per introdurre variabili locali

- GOTO - istruzioni di salto
  - if a< b goto 10
  - ...
  - 10: ...
    - costrutto base in assembly
    - permette una notevole flessibilità
    - ma rende programmi poco leggibili e nasconde gli errori
    - interazione complessa con chiamate di funzioni e stack di attivazione
  - Accesso dibattito negli anni 60/70 sulla utilità del goto
  - alla fine considerato dannoso, contrario ai principi della programmazione strutturata

- Sostituibilità del GOTO
  - teoria
    - teorema di Boehm-Jacopini
      - GOTO sostituibile da costrutti cicli while - test
  - pratica:
    - la rimozione del GOTO non porta a una grossa perdita di flessibilità
      - espressività
    - istruzioni di salto giustificabili e utile solo in particolari contesti, con costrutti appositi
      - uscita alternativa da un loop: break
      - ritorno da sottoprogramma: return
      - gestione eccezioni: raise exeption
  - Nei linguaggi che prediligono la sicurezza, chiarezza (Java) il Goto non è presente

- Programmazione strutturata
  - metodologia introdotta negli anni 70, per gestire la complessità del software
    - progettazione gerarchica, top-down
    - modularizzare il codice
    - uso di nomi significativi
    - uso estensivo dei commenti
    - tipi di dati strutturati
    - uso dei costrutti strutturati per il controllo
      - ogni costrutto, pezzo di codice, un unico punto di ingresso e di uscita
      - le singole parti della procedura modularizzate
      - diagrammi di flusso non necessari

- Comando condizionale
    - if(B) {C_1};
    - if(B) {C_1} else {C_2};
  - introdotto in Algol 60
  - varie regole per evitare ambiguità
    - if b1 then if b2 then c1 else c2 ì
    - if (i == 2) if (i == 1) printf ("%d \n", i); else printf("%d \n, i)
  - Pascal, C: else associa con il then non chiuso più vicino
  - Algol 68, FOrtran 77: parole chiave `endif` o `fi` marcano la fine dell'if e la fine del programma
  - Rami multipli espliciti con comando else if

```
if (Bexp1) {C1}
  else if (Bexp2) {C2}
  ...
  else if (Bexpn) {Cn}
  else {Cn + 1}
```

- Espressione condizionale in scheme
    - (if test-expr then-expr else-expr)
    - valuta il test-expr
    - se il risultato un valore diverso da #f
      - allora viene valutata then-expr
      - altrimenti si valuta else-expr
  - esempi:
    - (if (positive? - 5) (error "doesn't get here") 2) >> 2
    - (if (positive? 5) 1 (error "doesn'get here")) >> 1
    - (if 'we-have-no-bananas' "yes" "no") >> "yes"

- Comando condizionale in scheme
  - in alternativa

```
(cond
  [(positive? -5) (error "doesn't get here ")])
  [(zero? -5) (error "doesn't get here, either")]
  [(positive? 5) 'here'])
```

  - argomenti (in numero arbitrario)
    - coppie [guardia_booleana,   valore_restituito]

- Case
  - estensione del if then else a tipi non booleani

```
case exp of //exp: espressione a valori discreti
|   const_1 : C_1
|   const_2 : C_2
...         //const valori costanti, disgiunti
|   const_n : C_n // di tipo compatibile con exp
else          C_n + 1
```

  - molte versioni nei vari linguaggi
  - possibilità di definire range case 0 ... 9 : C2
    - non presente in: Pascal, C (vecchie versioni)
    - presente C, Visual Basic, ammettono range:
  - ramo di default: C, Modula, Ada, Fortran
    - senza default e con nessuna opzione valida: non si esegue nulla

- Pattern matching
  - ML, Haskell: possibilità usare pattern complessi all'interno di case

```
case(n, xs) of
  (0, _) => []
| (_, []) => []
| (n, (y:ys)) => y : take (n - 1) ys
```
  - casi non mutualmente esclusivi, si sceglie il primo
  - casi non esaustivi, si genera errore
  - istanziazione di variabili, meccaniscmo piuttosto sofisticato

- Sintassi di C, C++ e Java

```
int i ...
switch (i)
{
  
  case 3:
    printf("Case3 ");
    break;
  case 5:
    printf("Case5 ");
    break;
  default;
    printf("Default ");

}

```

- Estensioni con range

```
switch (arr[i])
  {
    case 1 ... 6:
      printf("%d in range 1 to 6\n", arr[i]);
      break;
    case 19 ... 20:
      printf("%d in range 19 to 20\n", arr[i]);
      break;
    default:
      printf("%d not in range\n", arr[i]);
      break;
  }

```

- Compilazione del case
  - più efficiente di if multipl se compilato in modo astuto ...

```
case exp of
    |   label_1 : C_1
    |   label_2 : C_2
    ...
    |   label_n : C_n
    else C_n + 1

```
  - con il valore di exp accedo
  - una tabella di istruzione di salto
  - che porta al codice macchina del ramo corrispondente al valore

- Versione per range ampi
  - lo schema precedente funziona bene
    - tempo di esecuzione e non lineare sul numero di possibilità
    - occupazione di memoria limitata
    - se i range di valori sono limitati
  - con range ampi, troppa occupazione di memoria, devo ripetere la stessa istruzione di salto per ogni valore nel range
  - è possibile ridurre l'occupazione di memoria con
    - ricerca binaria
    - tabella di hash
  - codice assembly più complesso, tempo di esecuzione: logaritmico o costante

- Iterazione
  - iterazione e ricorsione sono i due meccanisimi che permettono di ottenere tutte le funzioni computabili
    - formalismi di calcolo Turing completi
  - senza iterazione: nessuna istruzione ripetuta, tutto termina in un numero limitato di passi
  - iterazione:
    - indeterminata: cicli controllati logicamente
      - (while, repeat, ...)
    - determinata da cicli controllati numericamente
      - (do, for, foreach, ...) con numero di ripetizioni del ciclo determinate al momento dell'inizio del ciclo

- Iterazione indeterminata
  - while condizione do comando
    - sintassi più usata Java, ...

```

while (counter > 1)
{
  factorial *= counter--;
}


```
  - in altri linguaggi: Pascal

```

while Counter > 0 do
begin
  Factoria := Factorial * Counter;
  Counter := Counter - 1;
end;

```
  - introdotta in Algol-W

- Versione post-test, ripetuto almeno una volta
    - tipicamente C, C++, Java

```

do {

  factorial *= counter--; //multiply, then decrement
  
} while (counter > 0);

```
    - Ruby

```

begin
  factorial *= counter
  counter -= 1
end while counter > 1

```

    - Pascal

```

repeat
  Factorial := Factorial * Counter;
  Counter -:= 1
until Counter = 0

```

- Equivalenza
  - facile sostituire un tipo di ciclo con l'altro

```

do{
  do_work();
} while (condition);

```
  - equivalente a:

```

do_work();
while (condition) {
  do_work();
}
```

  - a seconda dei casi, una versione risulta più sintetica dell'altra

- Interazione indeterminata
  - indeterminata perché il numero di iterazioni non è noto a prori
  - l'iterazione indeterminata permette di ottenere tutte le funzioni calcolabili
  - facile da tradurre in codice assembly

- Iterazione determinata
```
FOR indice := inizio TO fine STEP passo DO
...
END
```
  - al momento dell'inizio dell'esecuzione del ciclo, è determinato il numero di ripetizioni del ciclo
    - all'interno del loop, non si possono modificare, gli indice
    - inizio, fine, passo valutati e salvati a inizio esecuzione
  - il potere espressivo è minore rispetto all'iterazione indeterminata, non si possono esprimere computazioni che non terminano
  - da preferire perché
    - garantisce la terminazione
    - ha una scrittura più leggibile e compatta
  - in C, e suoi derivati, il for non è costrutto di iterazione determinata, posso modificare l'indice

- Semantica del for

```

FOR indice := inizio TO fine BY passo DO
...
END

```

  - nell'ipotesi di passo positivo:
    1. valuta le espressioni inizio e fine e salva i valori ottenuti
    2. inizializza indice con il valore di inizio;
    3. se indice > fine termina l'esecuzione del for, altrimenti
        - si esegue corp
        - si incrementa indice del valore di passo
        - si torna a (3)

- Diverse realizzazioni

```

FOR indice := inizio TO fine BY passo DO
...
END

```

  - i vari linguaggi differiscono nei seguenti aspetti:
    - possibilità di modificare indice, valore finale, passo nel loop (se si, non si tratta di vera iterazione determinata)
    - numero di iterazioni (dove avviene il controllo indice < fine)
    - possibilità incremento negativo
    - valore indice al termine del ciclo: indeterminato, fine, fine + 1

- Iterazione determinata in C, C++, Java

```

for (initialization; condition; increment/decrement)
  statement

```
  - dove statemenet è spesso un blocco

```

int sum = 0;
for (int i = 1; i < 6; ++i){

  sum += i;

}

```

- Altri linguaggi
  - Python
```
for counter in range (1, 6): #range(1, 6) gives values from 
# statements
```

  - Ruby:

```
for counter in 1..5
# statements
end
```

- Foreach
  - ripeto il ciclo su tutti gli elementi di un oggetto enumerabile:
    - array
    - lista
  - presente in vari linguaggi sotto diverse forme
  - limitato potere espressivo, ma utile per
    - chiarezza
    - compattezza
    - prevedibilità
  - Java alla versione 5

```

int[] numbers = {10, 20, 30, 40, 50};

for(int x : numbers){
  System.out.print( x + ",");
}

```
  - vengono separati
    - algoritmo di scansione della struttura:
      - implicito nel foreach
      - generato automaticamente nel compilatore
    - operazioni da svolgere sul singolo elemento
      - definito esplicitamente nel codice
    - può essere svolto su un tipo di dato strutturato che metta a disposizione funzioni implicite per determinare
      - primo elemento
      - passo ad elemento successivo
      - test di terminazioni
    - esempi
      - liste, array, insiemi
      - alberi
    - altri esempi di foreach

```
- Python:

pets = ['cat', 'dog', 'fish']
for f in pets:
  print f

```
    - ciclo for per Pythone: un caso particolare di questo meccanismo

```
- Ruby: 

pets = ['cat', 'dog', 'fish']
pets.each do |f|
  f.print
end

for f in pets
  f.print
end
```
```

- JavaScript

var numbers = [4, 9, 16, 25];
function myFunction(item, index){
  ...;
}
numbers.forEach(myFunction)
```

- Ricorsione
  - modo alternativo all'iterazione per ottenere il potere espressivo delle MdT
  - scelta obbligata nei linguaggi puramente funzionali
  - intuizione: una funzione (procedura) è ricorsiva se definita in termini si se stessa
  - riflette la natura induttiva di alcune funzioni

```
fattoriale (0) = 1
fattoriale (n) = n * fattoriale(n - 1)
```

  - diventa

```
int fatt(int n){
  if(n <= 1)
    return 1;
  else
    return n * fatt (n - 1);
}
```

- Definizioni induttive (intermezzo)
  - numeri naturali 0, 1, 2, 3, ... minimo insieme X che soddisfa i due assiomi seguenti (Peano):
    - 0 è in X;
    - se n è in X allora succ(n) è X;
  - principio di induzione, una proprietà P(n) è vera su tutti i numeri naturali se
    - P(0) è vera;
    - per ogni n, se P(n) è vera allora è vera anche P(n + 1)
  - definizioni induttive(ricorsive): se g(Nat x A) -> totale allora esiste una unica funzione totale f: Nat -> A tale che
    - f(0) = a;
    - f(n + 1) = g(n, f(n))
  - fattoriale segue lo schema di sopra

- Definizioni induttive
  - garanzia di buona definizione (definisco univocamente una funzione totale)
  - schema piuttosto rigido:
    - la definizione induttiva della divisione div(n, m) è non ovvia
    - si può generalizzare: well founded induction, per avere
      - schema più flessibile
      - garanzia di buona definizione

- Ricorsione e definizioni induttive
  - funzione ricorsiva F analoga alla definizione induttiva di F:
    - il valore di F su n è definito in termini dei valori di F su m < n
  - tuttavia nei programmi sono possibili definizioni non "corrette":
    - la seguente scrittura non definisce alcuna funzione

```
foo(0) = 1
foo(n) = foo(n + 1) - 1
```
    - invece i seguenti porgrammi sono possibili

```
int foo (int n){
  if(n == 0)
    return 1;
  else
    return foo(n + 1) - 1
}
```

- Ricorsione ed iterazione
  - la ricorsione è possibile in ogni linguaggio che permetta
    - la funzione (o procedura) che può chiamare se stessa
    - gestione dinamica della memoria (pila)
  - ogni programma ricorsivo può essere tradotto in uno equivalente iterativo e viceversa
  - confronto:
    - ricorsione è più naturale su strutture dati ricorsive (alberi), quando la natura del problema è ricorsiva, l'iterazione è più efficiente su matrici e vettori
    - ricorsione scelta obbligata nei linguaggi funzionali, iterazione scelta preferita nei linguaggi imperativi
  - in caso di implementazioni naif ricorsione molto meno efficiente di iterazione tuttavia
    - optimizing compile può produrre codice efficiente
    - tail-recursion

- Ricorsione in coda (tail recursion)
  - una chiamata di g in f si dice "in coda" (o tail call) se f restituisce il valore restituito da g senza nessuna ulteriore computazione
  - f è tail recursive se contiene solo chiamate in coda a se stessa

```
function tail_rec (n: integer, m): integer
begin ...; return tail_rec(n - 1, m1) end

function non_tail rec (n: integer): integer
begin ...; x:= non_tail_rec(n - 1); return g(x) end

```
  - non serve allocazione dinamica della memoria con pila: basta un unico RdA
    - dopo la chiamata ricorsiva, il chiamante non deve fare nulla, attende il risultato, e lo passa al suo rispettivo chiamante
    - record di attivazione del chiamante inutile, spazio riutilizzato dal chiamato

- Più efficiente, esempio: il caso del fattoria

```
int fatt(int n){
  if(n <= 1)
    return 1;
  else
    return n * fatt(n - 1);
}

```

- Una versione tail-recursive del fattoriale

```
int fattrc(intn, int res){

  if(n <= 1)
    return res;
  else
    return fattrc(n - 1, n * res);

}

int fatt(int n){

  fattrc(n, i);

}
```

    - abbiamo aggiunto un parametro che rappresenta il valore da passare al "il resto della computazione"
    - fattrc(n, res) calcola il valore res * n!
  - basta un unico RdA
    - dopo ogni chiamata il RdA della funzione chiamante può essere eliminato
    - il suo spazio usato per il RdA della chiamata

- Un altro esempio:
  - Definizione:

```

Fib(0) = 1;
Fib(1) = 1;
Fib(n) = Fib(n - 1) + Fib(n - 2)

```

  - in scheme si può vedere come:

```

(define (fib n)
  (if (< n 2)
      1
      (+ (fib (- n 1)) (fib (- n 2)))))

```

  - complessità in tempo e spazio esponenziale in n
    - ad ogni chiamata due nuove chiamate
    - più precisamente il numero delle chiamate ha una crescita alla Fibonacci

- Una versione efficiente per Fibonacci
  - fibHelper(n, a, b) una funzione che nell'ipotesi:
    - a = Fib(i - 1)
    - b = Fib(i)
  - fibHelper(n, a, b) = Fib(i + n)
  - in scheme:

```
(define (fibHelper n a b)
  (if (= n 0)
      b
      (fibHelper (n - 1 b (+ a b)))
(define (fib n)
  (if (= n 0)
      1
      (fibHelper (- n 1) 1 1))

```

- Analisi
  - invariante:
    - se a e b sono l'(m - 1)-esimo e l'm-esimo elementi nella serie di Fibonacci
    - allora (fibHelper n a b) è (m + n)-esimo elemento nella serie
  - Complessità:
    - in tempo, lineare in n
    - in spazio, costante (un solo RdA)

- Chiave di lettura della ricorsione di coda
  - simulo l'esecuzione di un ciclo(while) dentro un linguaggio funzionale:
    - per ogni funzione f che in un linguaggio imperativo avre implementato tramite un ciclo
    - definisco una funzione f-helper avente parametri extra
    - questi parametri extra svolgono il ruolo delle variabili modificabili nel ciclo
    - f-helper chiama se stessa aggiornando i parametri extra, come avviene in un ciclo
    - f chiama f-helper inizializzando i parametri extra (come la funzione imperativa)
  - simulo uno stato in maniera locale e controllata, senza introdurre uno stato globale
  - uso della ricorsione di coda
    - ottimizzazione: solo le funzioni ricorsive più critiche (per la velocità d'esecuzione globale del programma) vengono riscritte usando la ricorsione di coda

- Continuation passing style
  - stile di programmazione funzionale
    - genera programmi tail-recursive
    - può migliorare la complessità computazionale
    - introduce un controllo esplicito sull'ordine di esecuzione
  - trasformo ogni funzione, aggiungendo ai suoi argomenti, un argomento k, continuazione
    - k rappresenta il resto del programma
      - prende il valore, generato dalla funzione, restituisce un risultato del programma
    - la computazione viene ridotta ad eseguire operazioni semplici e passare il risultato ad una continuazione

- Ccontinuation passing style

```
(define (pyth x y)
  (sqrt (+ (* x x) (* y y))))

(define (*& x y k)
  (k (* x y))

(define (pyth& x y k)
  (*& x x (lambda (x2)
          (*& y y (lambda (y2)
                  (+& x2 y2 (lambda (x2py2)
                            (sqrt& x2py2 k)))))))

```

- Fattoriale

```
(define (fattoriale n)
  (if (= n 0)
      1
      (* n (fattoriale (- n 1)))))

  - diventa:

(define (factorial& n k )
  (=& n 0 (lambda (b)
          (if b
              (k 1)
              (-& n 1 (lambda (nm1)
                      (factorial& nm1 (lambda (f)
                                      (*& n f k)))))))))

<h1 align = "center">Capitolo 6</h1>

# Astrarre sul controllo: procedure, passaggio dei parametri, eccezioni