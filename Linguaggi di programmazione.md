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
  - 