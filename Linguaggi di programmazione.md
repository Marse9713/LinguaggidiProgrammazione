# LinguaggidiProgrammazione

<h2 align = "center">Capitolo 1</h2>

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


<h2 align = "center">Capitolo 2</h2>

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