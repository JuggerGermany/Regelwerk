#import "../designs/boxes.typ" as boxes

#let title = "Schild"

Der Schild ist rund und sein maximaler Durchmesser beträgt #strong[60_cm].
Die vordere Fläche und der Rand des Schildes müssen gepolstert sein.
Der Griff befindet sich auf der hinteren Seite des Schildes.


Wird mit reduzierten Maßen gespielt, beträgt der maximale Durchmesser des Schildes #strong[45_cm].


#boxes.fluffbox([
  Der Schild wird in Kombination mit einer Kurzpompfe geführt (@feldspielis).
  Mit dem Schild kann weder getroffen (@treffer_aus), noch gepinnt (@pinnen) werden, aber der Jugg darf mit dem Schild bewegt werden (@pompfis).
])

#figure(image("/typst/images/schild.jpg"), caption: "Schildmaße")
