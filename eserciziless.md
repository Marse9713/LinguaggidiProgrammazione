# Esercizi Grammatiche

Svolgere due esercizi da ciascun gruppo: “Analizzatori lessicali”, “Analizzatori
sintattici”. La coppia di esercizi da svolgere in ciascun gruppo è determinato
dalla seguente funzione Haskell:

```haskell
generaraCoppia nEsercizi matricola = (primo, secondo) where
  primo = matricola `mod` nEsercizi + 1
  secondo = (matricola `mod` (nEsercizi - 3) + primo + 1) `mod`  nEsercizi + 1`
```
  
dove l’argomento “nEsercizi” deve essere istanziato con il numero di esercizi
del gruppo, mentre l’argomento “matricola” è la propria matricola.

Nota. La descrizione delle grammatiche all’interno degli esercizi è informale e
a volte ambigua. Nel risolvere gli esercizi, le grammatiche vanno formalizzate e
quindi le ambiguità devono essere risolte. Questo può essere svolto in vari
modi, tutti sono considerati accettabili.

<h1>Analizzatori lessicali</h1>

Utilizzando, a scelta, uno degli applicativi Lex, Flex o Alex, realizzare degli
analizzatori lessicali che risolvano due dei seguenti problemi:

1. Riconoscere in un file di testo le seguenti classi di lessemi:
    - parole chiave: var, function, procedure, while, do, if then, else, for
    - identificatori: stringhe che iniziano con una lettere minuscola
      dell’alfabeto seguite da lettere, cifre, e i simboli ’_‘,’-’
    - costanti numeriche: sequenze di cifre,
    - operatori: “+”, “++”, “-”, “–”, “=”, “==”.

          Per ogni lessema riconosciuto, stampare una coppia (classe, valore).

2. Rimuovere i commenti da un testo Haskell. I commenti Haskell, hanno due
   possibili formati
    - iniziano con la stringa di caratteri -- e terminano con il ritorno a capo
    - iniziano con la stringa di caratteri {- e terminano con la stringa -}

          Si cerchi inoltre di risolvere il problema di riconoscere coppie di commenti innestati,
          ossia la stringa {- aa {- bb -} cc -} viene
          riconosciuta come un singolo commento e non come il commento {- aa {- bb -} seguito dalla stringa cc -}

3. Rimuovere i commenti da un programma Java, sia quelli su una singola linea,
   marcati da //, che quelli disposti su più linee, marcati da /*e*/.

       Si cerchi inoltre di risolvere il problema di riconoscere coppie di commenti innestati, ossia la stringa /* aa /* bb /* cc /* viene riconosciuta come un singolo commento e non come il commento /* aa /* bb /* seguito dalla stringa cc */

4. Selezionare, in un file di testo, le stringhe di caratteri che rappresentano
   un numero in notazione romana. Solo i numeri romani devo essere stampati in
   uscita, separati da uno spazio, la restante parte del testo viene eliminata.

5. Selezionare in un file di testo le stringhe di caratteri che rappresentano un
   numero multiplo di quattro, nell’usuale notazione decimale. Solo in numeri
   multipli di 4 vengono stampati in uscita, separati da uno spazio, la restante
   parte del testo viene eliminata. Il controllo di divisibilità deve essere
   implementato usando opportune espressioni regolari, e non l’operazione di
   divisione-resto.

6. Selezionare in un file di testo le stringhe di caratteri che rappresentano in
   notazione binaria un numero multiplo di 3. Solo in numeri multipli di 4
   vengono stampati in uscita, separati da uno spazio, la restante parte del
   testo viene eliminata. Il controllo di divisibilità deve essere implementato
   usando opportune espressioni regolari, e non l’operazione di divisione-resto.

7. Riconoscere, in un file di testo, le sequenze di caratteri che rappresentano
   un numero in uno dei seguenti formati:
    - numero intero: stringa di cifre decimali, eventualmente precedute dal
      segno (+/-)
    - numero frazionari: coppia di stringhe di cifre intervallate da un punto ed
      eventualmente precedute dal segno, una delle due stringe, ma non entrambe
      può essere vuota.
    - floating point: numero intero o frazionario, seguito da “e”, oppure “E”,
      seguito da un numero intero.

          Per ciascuna sequenza riconosciuta, stampare in uscita: la sequenza stessa, il tipo di numero rappresentato, il numero di cifre usate nella rappresentazione.

8. Riconoscere stringhe di cifre e caratteri, che rappresentano i numeri in uno
   dei seguenti formati:
    - numero interi: stringa di cifre decimali, eventualmente precedute dal
      segno (+/-)
    - numeri esadecimali: stringa di cifre esadecimali (0-9, a-f, A-F) preceduta
      dalla sequenze “0x”, oppure una stringa di cifra esadecimali seguita da
      ‘H’.
    - numeri ottali: stringa di cifre ottali (0-7) preceduta dalla sequenze
      “0o”, oppure una stringa di cifre ottali seguite da ‘O’.

          Per ciascuna stringa riconosciuta stampare in uscita il formato del numero riconosciuto, il suo valore decimale.

9. Ricevuto in input una sequenza di sostantivi nelle lingua italiana,
   trasformare al plurale i sostantivi femminili e al singolare quelli maschili.
   Il programma può applicare una semplice regola generale per catalogare un
   sostantivo come femminile-maschile, singolare-plurale ma deve riuscire a
   gestire almeno una decina di eccezioni a questo regola (es. mano, tema,
   radio, parentesi, uomo).

<h1>Analizzatori sintattici</h1>

Utilizzando Lex-Yacc o Alex-Happy, costruire una coppia di analizzatori, uno
lessicale e uno sintattico, che insieme siano capaci di riconoscere i seguenti
linguaggi:

1. Il linguaggio formato da espressioni aritmetiche scritte in notazione
   poloacca inversa e costruite a partire dalle costanti intere e le 4
   operazioni aritmetiche. L’analizzatore deve restituire l’albero della
   struttura sintattica dell’espressione ricevuta in ingresso.

2. Il linguaggio formato da espressioni aritmetiche scritte in notazione
   poloacca diretta e costruite a partire dalle costanti intere e le 4
   operazioni aritmetiche. L’analizzatore deve valutare l’espressione ricevuta
   in ingresso.

3. Il linguaggio formato da espressioni aritmetiche costruite a partire da:
    - identificatori,
    - costanti numeriche: numeri naturali,
    - le 4 operazioni aritmetiche,
    - esponente: **,
    - le funzioni analitiche: sin, cos, tan, parentesi.

        L’ordine di priorità tra i vari operatori è definito in questo modo: per
        le operazioni aritmetiche vale l’ordine usale, l’esponente ha priorità
        sulle funzioni trigonometriche che a loro volta hanno priorità sul
        prodotto. Tutte le operazioni sono associative a sinistra, meno
        l’esponente che associa a destra.

          L’analizzatore deve restituire l’albero della struttura sintattica dell’espressione ricevuta in ingresso.

4. Il linguaggio delle espressioni aritmetiche nella forma usata nelle scuole
   medie, ossia:
    - numeri interi,
    - 4 operazioni aritmetiche,
    - le tre forme di parantesi: tonde, quadre, graffe.

          L’analizzatore deve controllare che le parentesi siano inserite secondo le usuali regole: parentesi tonde più interne, seguite dalle quadre, e poi graffe. L’analizzatore deve inoltre valutare l’espressione in ingresso.

5. Un frammento del linguaggio Java formato da: identificatori, costanti
        numeriche, assegnazione =, assegnazione con incremento +=, if else,
        ciclo while, separatori ; e blocchi { }

       L’analizzatore deve restituire l’albero della struttura sintattica del comando ricevuto in ingresso.

6. Sequenze di espressioni in linguaggio Haskell formate da: numeri interi
        identificatori applicazione costrutti let in e case

       L’analizzatore deve restituire gli alberi sintattici delle espressioni ricevute in ingresso.

7. Sequenze di espressioni in linguaggio Haskell formate da:
    - numeri interi
    - operazioni aritmetiche: +, *, -
    - test di uguaglianza: ==
    - la funzione if then else

          L’analizzatore deve valutare le espressioni ricevute in ingresso.

8. Sequenze di espressioni in linguaggio Scheme formate da: identificatori
        numeri interi operazioni aritmetiche: +, *, - test di uguaglianza: = le
        funzioni let e case

       L’analizzatore deve restituire gli alberi sintattici delle espressioni ricevute.

9. Sequenze di espressioni in linguaggio Scheme formate da: numeri interi
        operazioni aritmetiche: +, *, - test di uguaglianza: = costrutti if e
        case

       L’analizzatore deve valutare le espressioni ricevute in ingresso.
