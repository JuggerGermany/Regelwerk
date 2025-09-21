#let title = "Übersicht: Pompfenabmessungen"

Freimaße werden in kursiv angegeben und leiten sich aus den übrigen Maßen ab.

#let frei(body) = {
  show text: emph
  body
}
#let header = table.header("Maß", "Regulär", "Reduziert")


#show table.cell.where(y: 0): strong
#set table.cell(align: center + horizon)
#set table(columns: (2.5fr, 1fr, 1fr))


=== Schild
#table(
  header,
  "Durchmesser", "60 cm", "45 cm",
)

=== Kette
#table(
  header,
  "Maximale Länge", table.cell(rowspan:2, "320 cm"), table.cell(rowspan: 2, "240 cm"),
  "Maximale Reichweite",
  "Kettenball-Durchmesser", table.cell(colspan: 2, "19 cm"),
  frei("Maximale Kettenstranglänge"), frei("301 cm"), frei("221 cm"),
)

=== Kurzpompfe
#table(
  header,
  "Maximale Länge", table.cell(rowspan: 2, "85 cm"), table.cell(rowspan:2, "64 cm"),
  "Maximale Reichweite",
  "Minimale Schlagflächenlänge", "60 cm", "50 cm",
  frei("Maximale Griffflächenlänge"), frei("15 cm"), frei("14 cm"),
)

=== Langpompfe
#table(
  header,
  "Maximale Länge", table.cell(rowspan: 2, "140 cm"), table.cell(rowspan: 2, "105 cm"),
  "Maximale Reichweite",
  "Minimale Schlagflächenlänge", "100 cm", "75 cm",
  frei("Maximale Griffflächenlänge"), frei("40 cm"), frei("20 cm"),
)

=== Q-Tip
#table(
  header,
  "Maximale Länge", "200 cm", "150 cm",
  "Maximale Reichweite", "140 cm", "105 cm",
  "Minimale Schlagflächenlänge", "55 cm", "45 cm",
  "Maximale Griffflächenlänge", "80 cm", "60 cm",
)

=== Stab
#table(
  header,
  "Maximale Länge", "180 cm", "135 cm",
  "Maximale Reichweite", "110 cm", "83 cm",
  "Minimale Schlagflächenlänge", "90 cm", "68 cm",
  "Manschetten-Durchmesser", table.cell(colspan: 2, "Grifflächendurchmesser +1 cm"),
  frei("Maximale vordere Griffflächenlänge"), frei("20 cm"), frei("15 cm"),
)
