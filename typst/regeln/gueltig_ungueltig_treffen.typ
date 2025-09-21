
#let title = "Gültige und ungültige Treffer"

Aktive Nahpompfer*innen treffen gültig, indem sie mit der Schlagfläche ihrer regelgerecht geführten Pompfe andere aktive Feldspieler*innen an deren Trefferzone berühren.
Aktive Kettenspieler*innen treffen gültig, indem sie mit dem Kettenball ihrer regelgerecht geführten Kette andere Feldspieler*innen an deren Trefferzone berühren oder mit der regelgerecht geführten Kette eine geschlossene Form um die Trefferzone anderer Feldspieler*innen bilden.
Ein Treffer ist ungültig, wenn:

- der*die treffende Pompfer*in inaktiv ist.
- der*die treffende Pompfer*in die eigene Pompfe nicht regelgerecht führt.
- der Treffer nur außerhalb der Trefferzone erfolgt.
- ein*e Feldspieler*in in einer einzigen Bewegung der Pompfe zuerst mit einem Teil der Nahpompfe oder dem Kettenball an der Kopfzone getroffen wird oder die Kette darum eine geschlossene Form bildet und dann die Bedingungen für einen gültigen Treffer an einer Trefferzone erfüllt werden.
- er durch eine Stichbewegung mit einem Stab erfolgt.
- die Pompfe von einer Kette umwickelt ist und eine*n andere*n Feldspieler*in als den*die Kettenspieler*in trifft.
- der Kettenball an eine Trefferzone schwingt oder die Kette eine geschlossene Form um eine Trefferzone bildet, nachdem die Kette um eine Pompfe die geschlossene Form gebildet hat.
- der*die Kettenspieler*in den Kettenball wirft oder auf dem Boden hinter sich herzieht.



#[
  #set text(size: 16pt, font: "montserrat", weight: "bold", fill: gray)
  #set par(justify: false)
  #show text: upper
  #grid(columns: (1fr, 1fr, 1fr), align: center + horizon)[
    Kein Treffer\
    "Kopf"
    #v(80pt)
  ][
    #align(center)[#image("/typst/images/bueste_kopf.jpg", height: 10cm)]
  ][
    gültiger Treffer
    #v(80pt)
  ]
]
