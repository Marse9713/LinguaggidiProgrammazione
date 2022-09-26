<h1> DOMANDE POSSIBILI IN LINGUAGGI DI PROGRAMMAZIONE PER CAPITOLO <h1>

# Capitolo 1
<p>

1. Quali sono le qualità di un linguaggio?

    La sua leggibilità (chiaro, naturale, semplice), la sua scrivibilità (facilità per passare da un algoritmo al rispettivo codice), la sua affidabilità (facile verifica e non presenta errori nascosti) e il suo costo in termini di efficienza

2. Quali sono gli aspetti di un linguaggio di programmazione?

    La sua sintassi, la semantica, la pragmatica, l'implementazione, le librerie e i tools
 
3. Cos'è una macchina astratta (virtuale)? //OCCIO

    Una macchina astratta è una macchina capace di processare del codice che proviene da una macchina differente di più alto livello che consente di arrivare fino allo sfruttamento del hardware della macchina fisica, quindi passando da un linguaggio di alto livello, si arriva all'assembly o al codice macchina tramite le macchine astratte che convertono passo passo il codice (JVM).

4. Cosa si intende per compilazione pura?

    Si intende la sola compilazione del programma da livello alto alla traduzione ad un equivalente programma di livello più basso (verso l'hardware), fino ad arrivare al codice macchina o al codice assembly + il codice per l'utilizzo nel sistema operativo.

5. Cosa si intende per interpretazione pura?

    Si intende una traduzione istantanea con dati e programma sorgente e le singole istruzioni sono eseguite immediatamente

6. Quali sono i vantaggi di compilazione ed interpretazione?

    - Compilazione: migliori prestazioni generali e gli errori vengono presentati al momento dei controlli prima della sua esecuzione
    - Interpretazione: molto più flessibile, più semplice di implementazione, esecuzione diretta del codice e debugging più semplice

7. Cosa si intende per bootstrap?

    Scrittura di un nuovo compilatore che da come output un codice più efficiente e ricompilo il codice prodotto con la nuova versione che risulterà più efficiente di quella precedente

8. Cos'è l'analisi lessicale?

    Si intende il processo di scansione (scanner), divisione in lessemi, con la produzione di un token per lessema e la semplificazione dell'analisi di un programma. Le singole classi di lessemi sono descritti da linguaggi regolari e lo scanner implementa un DFA.

9. Cos'è il parsing?

    si analizza l'intero programma, definendo la sua struttura. Viene descritto tramite linguaggi liberi dal contesto e viene costruito l'albero della sintassi astratta una rappresentazione ad albero della struttura del programma.

10. Cos'è l'analisi semantica?

    Esegue controlli sul codice statici non implementabili dal parser ed altri controlli come le matrici fuori limite, quindi dinamici.

11. Che cos'è la tabella dei simboli?

    La tabella che contiene tutti i simboli dell fasi, quindi contiene tutti gli identificatori del programma e di ciò che il compilatore sa di loro.

---

# Capitolo 2

1. Cos'è la BNF?

    La Backus-Naur Form è una metasintassi, ovvero un formalismo attraverso cui è possibile descrivere la sintassi di linguaggi formali, descrivendoli in modo preciso e non ambiguo. Può essere descritto come un formalismo per descrivere grammatiche libere dal contesto.

2. Che cosa sono le grammatiche ambigue?

    Sono delle grammatiche che possono riconoscere delle stringhe uguali partendo da due punti differenti degli alberi di derivazione, quindi stesso risultato ma da due punti di inizio differenti.

3. Come si disambigua?

    Rendendo la grammatica non ambigua inserendo nuovi non terminali oppure ottenere una nuova grammatica che genera lo stesso linguaggio ma che è più complessa; si può anche convivere con la grammatica ambigua, inserendo informazioni aggiuntive su come risolcere le ambiguità.

4. Cosa sono gli abstract syntax tree?

    Sono gli alberi sintattici a cui sono stati eliminati i nodi rindondanti ai fini dell'analisi, dando solo informazioni utili, consentendo una computazione più pratica ed evidenziano meglio il significato di una stringa di caratteri

5. Cos'è la semantica?

    La semantica di un programma definisce il suo significato, descrive il suo comportamento a run-time.

6. Quali sono le operazioni eseguite sui linguaggi?

    L'unione, la concatenazione e la chiusura di Kleene dalle quali posso costruire l'insieme delle espressioni regolari, ossia l'algebra di Kleene (metodo per rappresentare i linguaggi in modo sintetico).

7. Quali sono le estensioni?

    Olte alle operazioni base si possono definire altre operazioni:
    - la chiusura positiva
    - la zero o una istanza
    - la n concatenazioni di parole
    - uno tra (un or tra i vari valori di una certa lista di elementi)
    - opposto (rappresentato da ^ davanti ad i caratteri successivi come [^a-z] quindi prende solo le minuscole)

8. Enuncia il teorema di equivalenza.

    I linguaggi regolari possono essere descritti in modi diversi:
    - espressioni regolari
    - grammatiche regolari
    - automi finiti non deterministici
    - automi finiti deterministici

    Esiste anche un automa deterministico minimo (quindi con il minor numero di stati), chiamato il DFA minimo.

9. Cos'è uno scanner?

    Uno scannere (lexer) deve risolvere un problema più complesso del semplice riconoscimento di una singola espressione regolare, ovvero deve dividere la stringa d'ingresso in lessemi, ciascuno riconosciuto da un'espressione regolare.

10. Come viene costruito uno scanner?

    Costruisco un automa per ogni espressione regolare e sulla stringa di ingresso, simulo il funzionamento parallelo degli automi e riconosco un lessema quano nessun automa può continuare.

11. Che cosa sono gli automi a pila? (automi LL)

    Sono degli automi con un uso limitato di memoria (quindi stati finiti) che accetteranno la stringa se la pila è vuota o se si raggiunge uno stato finale durante l'analisi della stringa.

12. Che cosa sono gli automi LL?

    Sono degli automi che costruiscono l'albero di derivazione in modo top-down a partire dal simbolo iniziale, esaminando al più n simboli della stringa non consumata (lookahead) e determina la prossima regola (espansione) da applicare

13. Che cos'è un analizzatore LR?

    Un analizzatore LR è un analizzatore creato come quello LL solo con l'approccio bottom-up, quindi a partire dalla stringa di input applico una serie di contrazioni (regole al contrario) fino a contrarre tutto l'input nel simbolo iniziale della grammatica.

---

# Capitolo 3

1. Che cos'è il legame e un ambiente?

    Il legame (binding) è l'associazione esistente tra un nome e un oggetto mentre l'ambiente (environment) sono gli insiemi dei legami esistenti dipendenti da uno specifico punto del programma, quindi può essere condizionato dal codice eseguito in precedenza quindi la storia del programma.

2. Come si creano i binding?

    I binding si creano con il linguaggio (quindi tipi primitivi, operazioni primitive, costanti predefinite) e quelli che crea il programmatore (sottoscrizione di variabili, parametri formali, procedure, ...).

3. Quando si possono creare i binding?

    - durante la definizione del linguaggio
    - la scrittura del codice
    - il caricamento del programma in memoria
    - l'esecuzione
    - ...