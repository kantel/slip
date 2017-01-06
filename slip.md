% SLIP – eine Sprache zwischen den Stühlen


## Einleitung

Joseph Weizenbaums legendäres Computerprogramm ELIZA wurde vor 50 Jahren – laut der Wikipedia – im MAD-SLIP geschrieben. Es gilt heute als der Vorläufer der Chatbots. Anläßlich dieses runden Jubiläums wurde am 2. Oktober 2016 im Rahmen des *Vintage Computing Festivals Berlin* (VCFB) eine Kurztagung unter den Titel »Hello, I’m ELIZA« durchgeführt.

Ich hatte die Ehre, unter dem Titel »SLIP – eine Sprache zwischen den Stühlen« etwas zur konkreten Implementierung dieses Programms zu erzählen. Nun will ich diesen Vortrag in einen Artikel für den Tagungsband verwandeln. Und dieses Projekt ist gleichzeitig mein Testballon mit Tufte CSS und Tufte LaTeX.

![Was Google unter MAD-SLIP so alles findet](images/madslip-b.jpg)

## Was ist SLIP?

Das Programm ELIZA wurde 1966 von Joseph Weizenbaum in der Sprache SLIP geschrieben, laut Wikipedia in MAD-SLIP. Die Sprache SLIP wurde von Weizenbaum selber entwickelt.

  * SLIP: **S**ymmetric **LI**st **P**rocessor
  * SLIP ist eine Sammlung von Routinen für Listen, die in eine höhere Programmiersprache (Wirtssprache) eingebettet werden können.
  * SLIPs Kernroutinen wurden in Assembler geschrieben, die anderen in der Wirtssprache implementiert.

Es gab drei Versionen von SLIP:

  * FORTRAN-SLIP (eingebettet in FORTRAN IV, 1963)
  * MAD-SLIP (eingebettet in MAD – Michigan Algorithm Decoder)
  * ALGOL-SLIP (eingebettet in ALGOL 60)

Das Einbetten von SLIP in eine andere Programmiersprache, hatte den Vorteil, daß der Programmierer keine neue Sprache lernen mußte, sondern nur die Routinen zur Listenverarbeitung.

![MAD is not Alfred](images/mad.jpg)

MAD-SLIP ist die Fassung von SLIP, in der ELIZA geschrieben wurde. Die Wirtssprache **MAD** ()**M**ichigan **A**lgorithm **D**ecoder) war eine von ALGOL beeinflußte Sprache, die unter anderem auf den IBM 7094 Mainframes mit dem Timesharing-Betriebssystem CTSS lief. CTSS wurde Anfang der 1960er-Jahre am MIT entwickelt und bis 1973 genutzt.

Weizenbaum nennt vier frühere List-Prozessoren, die SLIP beeinflußt haben:

**IPL-V (Information Processing Language)** ist eine Computersprache, die 1956 von *Allen Newell*, *Cliff Shaw* und *Herbert A. Simon* bei der RAND Corporation und dem Carnegie Institute of Technology entwickelt wurde. Bis sich LISP durchsetzte, war IPL lange Jahre die Sprache der KI-Forschung, in der zum Beispiel die Programme Logic Theorist (1956), General Problem Solver (GPS, 1957) und das Computer-Schachprogramm NSS implementiert wurden.

**FLPL** steht für FORTRAN List Processing Language und wurde bei IBM 1958 für die IBM 704 entwickelt, um damit KI-Programme zu entwickeln (speziell einen Therom-Prüfer für Geometrie nach einer Idee von Marvin Minsky).

**The Threaded List Language** wurde 1960 von *A.J. Perlis* und *Charles Thornton* auf einem »650 Computer System« am Carnegie Institute of Technology in Pittsburgh in Assembler (TASS) implementiert.

**Knotted Lists Structures** (KLS) – von Weizenbaum selber geschrieben, ist der direkte Vorgänger von SLIP.

SLIPs Besonderheit war, daß es wirklich symmetrisch auf Listen operieren konnte. Die Listen hatten keine bevorzugte Orientierung und es gab jeweils symmetrische Befehle, um sowohl auf das erste, wie auch auf das letzte Element der Liste zugreifen zu können. SLIPs Listenelemente, Zellen genannt, hatten eine feste Größe und enthielten die Daten und keine Zeiger auf Daten. Die Größe war abhängig von der Wortlänge der Wirtssysteme.

### Exkurs: LISP

**LISP** (**LIS**t **P**rocessing) entstand 1958/1959 am MIT und gehört bis heute zu den wichtigsten Programmiersprachen der Künstlichen Intelligenz (KI).

## Die Hardware: IBM 7094

SLIP lief auf einer (damals brandneuen – 1962) IBM 7094, dem Nachfolgemodell der IBM 7090. Die IBM 7090 war der erste Transistor-Großrechner für den wissenschaftlichen Bereich, den IBM herstelte, das Vorgängermodelle (IBM 704-Serie) wurden noch mit Röhren betrieben.

![Die Hardware: IBM 7094](images/ibm7094console.jpg)

Zur Größenordnung: Ein »typisches« System kostete damals etwa 2,9 Millionen US-Dollar (umgerechnet auf die heutige Kaufkraft ca. 23,5 Millionen Dollar), man konnte es aber auch für 63.500 US-Dollar/Monat mieten (umgerechnet auf heutige Kaufkraft ca. 500.000 Dollar).

Die technischen Daten der IBM 7094

  * Die Rechner der 7000er-Serie – wie schon die Vorgängermodelle – besaßen eine Wortlänge von 36 Bit
  * Das Befehlsformat hatte einen 3 Bit-Prefix, ein 15 Bit Decrement und eine 15-Bit Adresse
  * Fixpoint Zahlen wurden binär mit einem Bit für das Vorzeichen direkt gespeichert
  * Einfache Fließkommazahlen wurden mit einem 8-Bit Exponenten und einer 27-Bit-Mantisse dargestellt
  * Double-Float (neu in der IBM 7094) hatten ebenfalls einen 8-Bit Exponenten und eine 54-Bit-Mantisse
  * Alphanumerische Werte wurden im 6-Bit-BCD-Format gespeichert, 6 Werte in einem Wort

## Joseph Weizenbaum

  * 1952 - 1963: Systemingenieur im Computer Development Laboratory der General Electric Corporation, dort wurde SLIP entwickelt.
  * ab 1963: Massachusetts Institute of Technology (MIT), zunächst als Associate Professor, ab 1970 als Professor für Computer Science.
  * 1966: ELIZA
  
## Literatur

  * Alexander Neumann: *[Vor 60 Jahren: IBM veröffentlicht erste Sprachspezifikation für Fortran](https://www.heise.de/developer/meldung/Vor-60-Jahren-IBM-veroeffentlicht-erste-Sprachspezifikation-fuer-Fortran-3351318.html)*, heise Developer vom 17. Oktober 2016

## Bildnachweise
