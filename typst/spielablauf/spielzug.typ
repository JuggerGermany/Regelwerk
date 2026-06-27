#import "../designs/boxes.typ" as boxes

#let title = "Spielzug und Steine"

Ein Juggerspiel unterteilt sich in Spielzüge.

Jeder Spielzug wird von Taktschlägen, den Steinen, begleitet.
Das Intervall zwischen zwei aufeinander folgenden Steinen beträgt #strong[1,5 Sekunden].



#boxes.fluffbox([
  Ein Spielzug wird mit einem Startsignal eröffnet (@einleiten)  und endet mit dem Erzielen eines Punktes oder einem Zugabbruch (@abbruch).

  Jugger kann nach Steinen oder nach Sätzen gespielt werden. Ein Spiel nach Sätzen kann über eine festgelegte maximale Dauer zeitlich begrenzt werden.
])
