#set heading(numbering: "1.1.1.1")

#show "_": sym.space.nobreak.narrow

// outline
#let in-outline = state("in-outline", false)

#set page(
  numbering: (..n) => context {
    if in-outline.get() {
      numbering("1", ..n)
    } else {
      numbering("- 1 / 1 -", ..n)
    }
  },
)

#show outline.entry: it => link(
  it.element.location(),
  it.indented(it.prefix(), it.inner()),
)
#show outline.entry.where(level: 1): it => {
  set text(13pt)
  v(12pt, weak: true)
  it = it.indented(it.prefix(), it.body())
  strong(it)
}
#show outline: it => {
  in-outline.update(true)
  it
  in-outline.update(false)
}

// impressum
#import "./impressum.typ" as impressum_text

// introductory explanations
#import "./introduction.typ" as introduction_text

// main content
#import "./spielfeld_sportgeraete/spielfeld.typ" as spielfeld_text: title as spielfeld_title
#import "./spielfeld_sportgeraete/jugg.typ" as jugg_text: title as jugg_title
#import "./spielfeld_sportgeraete/mal.typ" as mal_text: title as mal_title
#import "./spielfeld_sportgeraete/pompfen.typ" as pompfen_text: title as pompfen_title
#import "./spielfeld_sportgeraete/pompfen/griffflaeche.typ" as griffflaeche_text: title as griffflaeche_title
#import "./spielfeld_sportgeraete/pompfen/schlagflaeche.typ" as schlagflaeche_text: title as schlagflaeche_title
#import "./spielfeld_sportgeraete/pompfen/stechspitze.typ" as stechspitze_text: title as stechspitze_title
#import "./spielfeld_sportgeraete/pompfen/schild.typ" as schild_text: title as schild_title
#import "./spielfeld_sportgeraete/pompfen/kurzpompfe.typ" as kurzpompfe_text: title as kurzpompfe_title
#import "./spielfeld_sportgeraete/pompfen/langpompfe.typ" as langpompfe_text: title as langpompfe_title
#import "./spielfeld_sportgeraete/pompfen/qtip.typ" as qtip_text: title as qtip_title
#import "./spielfeld_sportgeraete/pompfen/stab.typ" as stab_text: title as stab_title
#import "./spielfeld_sportgeraete/pompfen/kette.typ" as kette_text: title as kette_title
#import "spielfeld_sportgeraete/kleidung.typ" as kleidung_text: title as kleidung_title
// section 2
#import "team/spielerinnen.typ" as spielerinnen_text: title as spielerinnen_title
#import "team/zusammensetzung.typ" as zusammensetzung_text: title as zusammensetzung_title


#impressum_text
#columns(2, outline(title: "Inhalt"))
#introduction_text
#pagebreak()
= Spielfeld und Sportgeräte
== #spielfeld_title
#spielfeld_text
== #jugg_title
#jugg_text
== #mal_title
#mal_text
== #pompfen_title
#pompfen_text
=== #griffflaeche_title
#griffflaeche_text
=== #schlagflaeche_title
#schlagflaeche_text
=== #stechspitze_title
#stechspitze_text
=== Pompfenarten
==== #schild_title
#schild_text
==== #kurzpompfe_title
#kurzpompfe_text
==== #langpompfe_title
#langpompfe_text
==== #qtip_title
#qtip_text
==== #stab_title
#stab_text
==== #kette_title
#kette_text
== #kleidung_title
#kleidung_text
= Team
== #spielerinnen_title
#spielerinnen_text
== #zusammensetzung_title
#zusammensetzung_text

#text(size: 30pt, fill: red)[TODO: Rest des Regelwerks übernehmen]
