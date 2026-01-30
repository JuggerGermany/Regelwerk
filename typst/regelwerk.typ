#import "/typst/utils.typ": todo

#let outside-pos = state("outside-pos", right)
#let dark-background = rgb("#78909C")
#let mid-background = rgb("#CFD8DC")
#let light-background = rgb("#ECEFF1")
#let top_margin = 3cm

// page layout
#let page_footer(numbering_end) = context {
	let current_page = counter(page).display(page.numbering)
	let total_pages = numbering(page.numbering, ..counter(page).at(numbering_end))
	align(center)[\- #current_page / #total_pages \-]
}
#set page(
  margin: (inside: 3cm, outside: 2cm, top: top_margin),
	footer: none,
	numbering: "1",
  background: (
    context {
      let section_number = counter(heading).get().at(0)
      if calc.odd(counter(page).get().at(0)) {
        outside-pos.update(left)
      } else {
        outside-pos.update(right)
      }
      place(
        top + outside-pos.get(),
        dx: 0cm,
        dy: 0cm,
        rect(width: 1.5cm, height: 20cm, fill: light-background),
      )
      for dy in (1.6cm, 4.6cm, 7.6cm, 10.6cm) {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: dy + top_margin,
          rect(width: 1.5cm, height: 1.5cm, fill: mid-background),
        )
      }
      if section_number > 0 {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: 0.1cm + 1.5cm * section_number + top_margin,
          rect(width: 1.5cm, height: 1.5cm, fill: dark-background),
        )
      }
    }
  ),
)

// headings
#set heading(numbering: "1.1.1.1")
#show heading: set text(font: "montserrat", fill: rgb("#4F4F51"))
#show heading: upper
#show heading.where(level: 1, outlined: true): it => context {
	set page(footer:none)
  [
    #let color = state("color", rgb("#78909C"))
    #let nb = counter(heading).get().at(0)
    #if calc.even(nb) {
      color.update(rgb("#CFD8DC"))
    } else {
      color.update(rgb("#ECEFF1"))
    }
    #pagebreak(to: "even")
    #v(-1.5cm + nb * 1.3cm)
    #place(
      top + left,
      dx: -2cm,
      dy: 0.1cm + 1.5cm * nb,
      rect(width: 3.5cm + 0.23cm * nb, height: 1.5cm, fill: dark-background),
    )
    #place(
      top + left,
      dx: -2cm,
      dy: 0.1cm + 1.5cm * (nb - 1),
      rect(width: 1.5cm, height: 1.5cm, fill: color.get()),
    )
    #text(size: 150pt, font: "georgia", weight: "bold")[#counter(heading).display(it.numbering)] \

    #text(size: 50pt, weight: "thin")[#upper[#it.body]]
    #pagebreak()
  ]
}

// text & images
#set par(justify: true)
#set text(lang: "de", size: 13pt, font: "vollkorn", fill: rgb("#4F4F51"))
#show figure: set align(center)
#show figure.caption: set text(size: 10pt)
#show "_": sym.space.nobreak.narrow

// outline
#show outline.entry: it => link(it.element.location(), it.indented(it.prefix(), it.inner()))
#show outline.entry.where(level: 1): it => {
  set text(13pt)
  v(12pt, weak: true)
  it = it.indented(it.prefix(), it.body())
  strong(it)
}
#show outline.entry.where(level: 3): it => if it.element.numbering.at(0) == "A" {} else { it }

// impressum
#import "/typst/impressum.typ" as impressum_text

// introductory explanations
#import "/typst/introduction.typ" as introduction_text

// main content

// section 1
#import "/typst/spielfeld/jugg.typ" as jugg_text: title as jugg_title
#import "/typst/spielfeld/mal.typ" as mal_text: title as mal_title
#import "/typst/spielfeld/spielfeld.typ" as spielfeld_text: title as spielfeld_title

// section 2
#import "/typst/pompfen/pompfen.typ" as pompfen_text: title as pompfen_title
#import "/typst/pompfen/schild.typ" as schild_text: title as schild_title
#import "/typst/pompfen/kette.typ" as kette_text: title as kette_title
#import "/typst/pompfen/kurzpompfe.typ" as kurzpompfe_text: title as kurzpompfe_title
#import "/typst/pompfen/langpompfe.typ" as langpompfe_text: title as langpompfe_title
#import "/typst/pompfen/qtip.typ" as qtip_text: title as qtip_title
#import "/typst/pompfen/stab.typ" as stab_text: title as stab_title
#import "/typst/pompfen/nahpompfen.typ" as nahpompfen_text: title as nahpompfen_title
#import "/typst/pompfen/griffflaeche.typ" as griffflaeche_text: title as griffflaeche_title
#import "/typst/pompfen/schlagflaeche.typ" as schlagflaeche_text: title as schlagflaeche_title
#import "/typst/pompfen/stechspitze.typ" as stechspitze_text: title as stechspitze_title

// section 2
#import "/typst/team/kleidung.typ" as kleidung_text: title as kleidung_title
#import "/typst/team/spielerinnen.typ" as spielerinnen_text: title as spielerinnen_title
#import "/typst/team/zusammensetzung.typ" as zusammensetzung_text: title as zusammensetzung_title

// section 3
#import "/typst/spielablauf/spielzug.typ" as spielzug_text: title as spielzug_title
#import "/typst/spielablauf/spiel_nach_steinen.typ" as spiel_nach_steinen_text: title as spiel_nach_steinen_title
#import "/typst/spielablauf/spiel_nach_saetzen.typ" as spiel_nach_saetzen_text: title as spiel_nach_saetzen_title
#import "/typst/spielablauf/spielzugvorbereitung.typ" as aufstellung_text: title as aufstellung_title
#import "/typst/spielablauf/einleiten.typ" as einleiten_text: title as einleiten_title
#import "/typst/spielablauf/fruehstart.typ" as fruehstart_text: title as fruehstart_title
#import "/typst/spielablauf/fehlstart.typ" as fehlstart_text: title as fehlstart_title
#import "/typst/spielablauf/bereitschaft.typ" as bereitschaft_text: title as bereitschaft_title
#import "/typst/spielablauf/punkten.typ" as punkten_text: title as punkten_title
#import "/typst/spielablauf/abbruch.typ" as abbruch_text: title as abbruch_title

// section 4
#import "/typst/regeln/sicherheit.typ" as sicherheit_text: title as sicherheit_title
#import "/typst/regeln/feldspielerinnen.typ" as feldspielerinnen_text: title as feldspielerinnen_title
#import "/typst/regeln/aus.typ" as aus_text: title as aus_title
#import "/typst/regeln/sicherer_umgang.typ" as sicherer_umgang_text: title as sicherer_umgang_title
#import "/typst/regeln/beschaedigte_pompfe.typ" as beschaedigte_pompfe_text: title as beschaedigte_pompfe_title
#import "/typst/regeln/trefferzone.typ" as trefferzone_text: title as trefferzone_title
#import "/typst/regeln/gueltig_ausgefuehrte_treffer.typ" as gueltig_ausgefuehrte_treffer_text: title as gueltig_ausgefuehrte_treffer_title
#import "/typst/regeln/gueltig_platzierte_treffer.typ" as gueltig_platzierte_treffer_text: title as gueltig_platzierte_treffer_title
#import "/typst/regeln/doppeltreffer.typ" as doppeltreffer_text: title as doppeltreffer_title
#import "/typst/regeln/ansagen.typ" as ansagen_text: title as ansagen_title
#import "/typst/regeln/treffer.typ" as treffer_text: title as treffer_title
#import "/typst/regeln/pinnen.typ" as pinnen_text: title as pinnen_title
#import "/typst/regeln/jugg_platzieren.typ" as jugg_platzieren_text: title as jugg_platzieren_title
#import "/typst/regeln/aktive_lauferinnen.typ" as aktive_lauferinnen_text: title as aktive_lauferinnen_title
#import "/typst/regeln/pompferinnen.typ" as pompferinnen_text: title as pompferinnen_title
#import "/typst/regeln/lauferinnen.typ" as lauferinnen_text: title as lauferinnen_title
#import "/typst/regeln/lauferkampf.typ" as lauferkampf_text: title as lauferkampf_title
#import "/typst/regeln/aktive_pompferinnen.typ" as aktive_pompferinnen_text: title as aktive_pompferinnen_title
#import "/typst/regeln/aktive_feldspielerinnen.typ" as aktive_feldspielerinnen_text: title as aktive_feldspielerinnen_title
#import "/typst/regeln/inaktive_lauferinnen.typ" as inaktive_lauferinnen_text: title as inaktive_lauferinnen_title
#import "/typst/regeln/inaktive_pompferinnen.typ" as inaktive_pompferinnen_text: title as inaktive_pompferinnen_title
#import "/typst/regeln/inaktive_feldspielerinnen.typ" as inaktive_feldspielerinnen_text: title as inaktive_feldspielerinnen_title
#import "/typst/regeln/abknien.typ" as abknien_text: title as abknien_title
#import "/typst/regeln/strafzeit.typ" as strafzeit_text: title as strafzeit_title
#import "/typst/regeln/aufstehen.typ" as aufstehen_text: title as aufstehen_title

// section 5
#import "/typst/spielhelferinnen/spielhelferinnen.typ" as spielhelferinnen_text
#import "/typst/spielhelferinnen/schiedsrichterinnen.typ" as schiedsrichterinnen_text: title as schiedsrichterinnen_title
#import "/typst/spielhelferinnen/hauptschiedsrichterin.typ" as hauptschiedsrichterin_text: title as hauptschiedsrichterin_title
#import "/typst/spielhelferinnen/nebenschiedsrichterin.typ" as nebenschiedsrichterin_text: title as nebenschiedsrichterin_title
#import "/typst/spielhelferinnen/malrichterinnen.typ" as malrichterinnen_text: title as malrichterinnen_title
#import "/typst/spielhelferinnen/punktezaehlerin.typ" as punktezaehlerin_text: title as punktezaehlerin_title
#import "/typst/anhang/masstabelle.typ" as masstabelle_text: title as masstabelle_title
#import "/typst/anhang/schluesselbegriffe.typ" as schluessel_text: title as schluessel_title

// Branch: Test RW 2026 23.12.2025, zuletzt bearbeitet von Helene

#{
    set page(margin: 0cm)
    image("images/cover_front.jpg")
}

#pagebreak()
#impressum_text

#[ // Outline page
  #pagebreak()
  #show link: set text(size: 11pt)
  #set page(margin: (top: 2.5cm))
  #align(center)[
    #text(size: 40pt, font: "montserrat", weight: "thin")[#upper[Inhalt]]
  ]
  #box(height: 21.5cm)[#columns(2, outline(title: none))]
  #pagebreak()
]

#set page(footer: page_footer(<end_of_content>))
#counter(page).update(1)
#introduction_text



= Spielfeld
== #jugg_title
#jugg_text
== #mal_title
#mal_text
#pagebreak()
== #spielfeld_title
#spielfeld_text

= #pompfen_title
#pompfen_text

== #nahpompfen_title
#nahpompfen_text
=== #griffflaeche_title
#griffflaeche_text
#pagebreak()
=== #schlagflaeche_title
#schlagflaeche_text
=== #stechspitze_title
#stechspitze_text

#pagebreak()
== Pompfenarten
=== #kurzpompfe_title
#kurzpompfe_text
=== #langpompfe_title
#langpompfe_text
=== #qtip_title
#qtip_text
=== #stab_title
#stab_text
=== #schild_title
#schild_text
=== #kette_title
#kette_text
#align(left)[
  #set par(justify: false)
  = Teams und Ausrüstung
]
== #zusammensetzung_title
#zusammensetzung_text
== #spielerinnen_title
#spielerinnen_text
== #kleidung_title
#kleidung_text

= Spielablauf
== #spielzug_title
#spielzug_text
=== #spiel_nach_steinen_title
#spiel_nach_steinen_text
=== #spiel_nach_saetzen_title
#spiel_nach_saetzen_text
== #aufstellung_title
#aufstellung_text
#pagebreak()
== #einleiten_title
#einleiten_text
=== #bereitschaft_title
#bereitschaft_text
=== #fruehstart_title
#fruehstart_text
=== #fehlstart_title
#fehlstart_text
#pagebreak()
== Beenden eines Spielzugs
=== #punkten_title
#punkten_text
=== #abbruch_title
#abbruch_text

= Spielregeln
== #sicherheit_title
#sicherheit_text
=== #sicherer_umgang_title
#sicherer_umgang_text
=== #beschaedigte_pompfe_title
#beschaedigte_pompfe_text
== #feldspielerinnen_title
#feldspielerinnen_text
=== #aktive_feldspielerinnen_title
#aktive_feldspielerinnen_text
=== #inaktive_feldspielerinnen_title
#inaktive_feldspielerinnen_text
#pagebreak()
== #pompferinnen_title
#pompferinnen_text
=== #aktive_pompferinnen_title
#aktive_pompferinnen_text
=== #inaktive_pompferinnen_title
#inaktive_pompferinnen_text
== #lauferinnen_title
#lauferinnen_text
=== #aktive_lauferinnen_title
#aktive_lauferinnen_text
=== #inaktive_lauferinnen_title
#inaktive_lauferinnen_text
=== #lauferkampf_title
#lauferkampf_text
#pagebreak()
== #aus_title
#aus_text
== #treffer_title
#treffer_text
=== #gueltig_ausgefuehrte_treffer_title
#gueltig_ausgefuehrte_treffer_text
#pagebreak()
=== #gueltig_platzierte_treffer_title
#gueltig_platzierte_treffer_text
=== #trefferzone_title
#trefferzone_text
=== #doppeltreffer_title
#doppeltreffer_text
=== #ansagen_title
#ansagen_text
== #pinnen_title
#pinnen_text
== #abknien_title
#abknien_text
=== #strafzeit_title
#strafzeit_text
=== #aufstehen_title
#aufstehen_text
== #jugg_platzieren_title
#jugg_platzieren_text

= Spielhelfer\*innen
#spielhelferinnen_text
== #schiedsrichterinnen_title
#schiedsrichterinnen_text
=== #hauptschiedsrichterin_title
#hauptschiedsrichterin_text
=== #nebenschiedsrichterin_title
#nebenschiedsrichterin_text
=== #malrichterinnen_title
#malrichterinnen_text
== #punktezaehlerin_title
#punktezaehlerin_text

#[]<end_of_content>


#set page(footer: page_footer(<end_of_document>), numbering: "i")
#counter(heading).update(0)
#set heading(numbering: "A.1")
= Anhang
#counter(page).update(1)
== #masstabelle_title
#masstabelle_text
#pagebreak()
== #schluessel_title
#schluessel_text

#[]<end_of_document>

#pagebreak()
#{
    set page(margin: 0cm)
    image("images/cover_back.png")
}
