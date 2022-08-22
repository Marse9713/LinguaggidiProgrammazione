# LinguaggidiProgrammazione

<h2>Capitolo 1</h2>

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


<h2>Capitolo 2</h2>

