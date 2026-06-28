#import "../designs/boxes.typ" as boxes

== Spielzug und Steine

Ein Juggerspiel unterteilt sich in Spielzüge.

Jeder Spielzug wird von Taktschlägen, den Steinen, begleitet.
Das Intervall zwischen zwei aufeinander folgenden Steinen beträgt #strong[1,5 Sekunden].



#boxes.fluffbox([
  Ein Spielzug wird mit einem Startsignal eröffnet (@einleiten)  und endet mit dem Erzielen eines Punktes oder einem Zugabbruch (@abbruch).

  Jugger kann nach Steinen oder nach Sätzen gespielt werden. Ein Spiel nach Sätzen kann über eine festgelegte maximale Dauer zeitlich begrenzt werden.
])

#boxes.fluffbox(
  [


    Ziel bei einem Spiel nach Steinen ist es, mit dem eigenen Team innerhalb einer festgelegten Spieldauer mehr Punkte zu erzielen als das Team der Gegenseite.
    Im Allgemeinen setzt sich ein Spiel nach Steinen aus *2~Halbzeiten* zusammen, welche jeweils aus *100~Steinen* bestehen.
    Zwischen den Halbzeiten gibt es eine Pause, in der die Teams die Seiten wechseln.
    Für die Dauer der Spielzüge werden die Steine mitgezählt.
    Nach einem Spielzug wird das Zählen der Steine unterbrochen und erst zu Beginn eines neuen Spielzugs fortgesetzt.
    Sind die Steine einer Halbzeit abgelaufen, wird der Spielzug beendet.
    Das Team, das am Ende der Spielzeit die meisten Punkte erzielt hat, gewinnt das Spiel.
    Haben beide Teams gleich viele Punkte am Ende der Spielzeit, gilt die Regel des Golden Jugg.
    Bei einem Golden Jugg wird ein neuer Spielzug eingeleitet.
    Das Team, das in diesem Spielzug den Punkt erzielt, gewinnt das Spiel.
  ],
  title: "Spiel nach Steinen",
)

#boxes.fluffbox(
  [
    Ziel bei einem Spiel nach Sätzen ist es, mit dem eigenen Team eine festgelegte Anzahl an Sätzen mit einer festgelegten Anzahl an Punkten zu gewinnen.
    Ein Spiel nach Sätzen kann sich zum Beispiel aus *2~Gewinnsätzen* mit je *5~Gewinnpunkten* zusammensetzen.
    Zwischen den Sätzen gibt es eine Pause, in der die Teams die Seiten wechseln.
    Das Team, das zuerst die festgelegte Anzahl an Sätzen gewonnen hat, gewinnt das Spiel.
  ],
  title: "Spiel nach Sätzen",
)

== Spielzug einleiten <einleiten>

Vor Beginn eines Spielzugs sollte der Jugg auf dem Mittelpunkt des Spielfeldes liegen.


Um eine zeitliche Begrenzung zwischen Spielzügen zu schaffen, darf die Spielleitung einen Countdown herunterzählen.
Die verbleibenden Steine bis zum nächsten Spielzugbeginn sollten dabei laut angesagt werden.
Mindestens der 10.,~5. und die letzten drei Steine müssen angesagt werden.
Ein Spielzug startet mit dem darauffolgenden Stein und wird mit „Jugger!“ angesagt.
Sobald ein Spielzug startet, dürfen die Feldspieler*innen das Spielfeld betreten.

Vor einem Spielzug stellen sich die Feldspieler*innen beider Teams außerhalb des Spielfeldes an der Grundlinie auf, die dem Mal, auf das sie spielen, gegenüberliegt.

#boxes.fluffbox([
  Es kann vorkommen, dass ein Team den Spielzug mit Juggbesitz startet (bspw. @fruehstart). Daher liegt der Jugg in diesem Fall nicht auf dem Mittelpunkt des Spielfeldes liegen.


  Während der Aufstellung haben die Teams Zeit zur Erholung, für Taktikbesprechungen und für Ein- und Auswechslungen.
])


=== Bereitschaft signalisieren

Sobald beide Teams signalisiert haben, dass sie bereit sind den nächsten Spielzug zu starten, sollte der Countdown zum nächsten Spielzug von der Spielleitung auf „Achtung-3-2-1-Jugger!“ gesetzt werden.
Dieses Startsignal muss im Takt von fünf aufeinanderfolgenden Steinen gerufen werden und der Spielzug beginnt mit dem Stein auf den Ausruf „Jugger!“.

#boxes.fluffbox([
  Teams können ihre Bereitschaft zum Beispiel dadurch signalisieren, dass ein*e Spieler*in, typischerweise die Läufer*in des nächsten Zuges, den Arm hebt.
])

=== Frühstart <fruehstart>

Ein Team begeht einen Frühstart, wenn sich ein*e Spieler*in des Teams während des Startsignals, aber vor dem Ausruf "Jugger" bereits im Spielfeld befindet.
Für den ersten Frühstart sollte die Spielleitung das jeweilige Team verwarnen.
Für jeden weiteren Frühstart im Spiel sollte das jeweilige Team durch Jugg-Besitz für die Gegenseite benachteiligt werden.
Die Spielleitung darf im eigenen Ermessen von der Benachteiligung absehen, wenn der Frühstart nicht durch das zu früh gestartete Team zu verantworten ist.

=== Fehlstart <fehlstart>

Ein Team begeht einen Fehlstart, wenn sich zum Start eines Spielzugs
- mehr als ein*e Läufer*in,
- mehr als vier Pompfer*innen oder
- mehr als ein*e Kettenspieler*in
des Teams im Spielfeld befindet.

Nach einem Fehlstart sollte der aktuelle Spielzug abgebrochen werden.

#boxes.fluffbox([
  Die Spielleitung kann davon absehen, einen Fehlstart zu ahnden, wenn er nicht zugrelevant ist.
])

== Beenden eines Spielzugs

#boxes.fluffbox([
  Solange der Jugg nicht gültig platziert und der Spielzug nicht abgebrochen wurde, läuft der Spielzug weiter.
])

=== Einen Punkt erzielen <punkten>

Wurde der Jugg gültig in einem Mal platziert, wird der Punkt dem Team, das auf dieses Mal spielt, zugesprochen und der aktuelle Spielzug endet.
Wurde der Jugg durch inaktive Läufer*innen ungültig platziert sollte er von den Spielhelfer*innen oder Spieler*innen aus dem Mal genommen und daneben gelegt werden.

#boxes.fluffbox([
  Wird der Jugg durch eine*n aktive Läufer*in ungültig platziert, muss er nicht aus dem Mal genommen werden. Unter Umständen kann der Jugg durch das Loslassen einer*s inaktiven Läufer*in gültig platziert werden. Auch dann punktet das Team und der Spielzug endet (@jugg_platz).
])

=== Abbruch <abbruch>


Spielzüge sollten abgebrochen werden, sobald die Sicherheit oder das Fairplay der Spieler*innen nicht mehr gewährleistet ist, z. B. durch
- eine Verletzung,
- unsportliches Verhalten oder
- zu viele Spieler*innen, Fremdpersonen, Tiere oder spielfremde, gefährdende Gegenstände auf dem Spielfeld.
Spielzüge dürfen außerdem abgebrochen werden, wenn eine Pompfe beschädigt ist.
Bei einem Spiel nach Sätzen dürfen Spielzüge außerdem abgebrochen werden, wenn eine Pattsituation entsteht.
Über den Abbruch eines Spielzugs entscheidet im Allgemeinen die Spielleitung.
