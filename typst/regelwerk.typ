#import "/typst/edit_utils.typ": todo

#let in-outline = state("in-outline", false)
#let outside-pos = state("outside-pos", right)
#let dark-background = rgb("#78909C")
#let mid-background = rgb("#CFD8DC")
#let light-background = rgb("#ECEFF1")

#set page(
  margin: (inside: 3cm, outside: 2cm, top: 4cm),
  numbering: (..n) => context {
    if in-outline.get() {
      numbering("1", ..n)
    } else {
      numbering("- 1 / 1 -", ..n)
    }
  },
  background: (
    context {
      let nb = counter(heading).get().at(0)
      if calc.odd(counter(page).get().at(0)) {
        outside-pos.update(left)
      } else {
        outside-pos.update(right)
      }
      place(
        top + outside-pos.get(),
        dx: 0cm,
        dy: 0cm,
        rect(width: 1.5cm, height: 18cm, fill: light-background),
      )
      for dy in (5.6cm, 8.6cm, 11.6cm) {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: dy,
          rect(width: 1.5cm, height: 1.5cm, fill: mid-background),
        )
      }
      if nb > 0 {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: 4.1cm + 1.5cm * nb,
          rect(width: 1.5cm, height: 1.5cm, fill: dark-background),
        )
      }
    }
  ),
)


#set heading(numbering: "1.1.1.1")
#show heading: set text(font: "montserrat", fill: rgb("#4F4F51"))
#show heading: upper
#show heading.where(level: 1, outlined: true): it => context {
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
    #colbreak()
  ]
}


#set text(lang: "de", size: 13pt, font: "vollkorn", fill: rgb("#4F4F51"))

#show "_": sym.space.nobreak.narrow

// outline


#show outline.entry: it => link(it.element.location(), it.indented(it.prefix(), it.inner()))
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
#import "/typst/impressum.typ" as impressum_text

// introductory explanations
#import "/typst/introduction.typ" as introduction_text

// main content
#import "/typst/spielfeld_sportgeraete/spielfeld.typ" as spielfeld_text: title as spielfeld_title
#import "/typst/spielfeld_sportgeraete/jugg.typ" as jugg_text: title as jugg_title
#import "/typst/spielfeld_sportgeraete/mal.typ" as mal_text: title as mal_title
#import "/typst/spielfeld_sportgeraete/pompfen.typ" as pompfen_text: title as pompfen_title
#import "/typst/spielfeld_sportgeraete/pompfen/griffflaeche.typ" as griffflaeche_text: title as griffflaeche_title
#import "/typst/spielfeld_sportgeraete/pompfen/schlagflaeche.typ" as schlagflaeche_text: title as schlagflaeche_title
#import "/typst/spielfeld_sportgeraete/pompfen/stechspitze.typ" as stechspitze_text: title as stechspitze_title
#import "/typst/spielfeld_sportgeraete/pompfen/schild.typ" as schild_text: title as schild_title
#import "/typst/spielfeld_sportgeraete/pompfen/kurzpompfe.typ" as kurzpompfe_text: title as kurzpompfe_title

#import "/typst/spielfeld_sportgeraete/pompfen/langpompfe.typ" as langpompfe_text: title as langpompfe_title

#import "/typst/spielfeld_sportgeraete/pompfen/qtip.typ" as qtip_text: title as qtip_title
#import "/typst/spielfeld_sportgeraete/pompfen/stab.typ" as stab_text: title as stab_title
#import "/typst/spielfeld_sportgeraete/pompfen/kette.typ" as kette_text: title as kette_title
#import "/typst/spielfeld_sportgeraete/kleidung.typ" as kleidung_text: title as kleidung_title
// section 2
#import "/typst/team/spielerinnen.typ" as spielerinnen_text: title as spielerinnen_title
#import "/typst/team/zusammensetzung.typ" as zusammensetzung_text: title as zusammensetzung_title
// section 3
#import "/typst/spielablauf/spielzug.typ" as spielzug_text: title as spielzug_title
#import "/typst/spielablauf/aufstellung.typ" as aufstellung_text: title as aufstellung_title
#import "/typst/spielablauf/einleiten.typ" as einleiten_text: title as einleiten_title
#import "/typst/spielablauf/fruehstart.typ" as fruehstart_text: title as fruehstart_title
#import "/typst/spielablauf/punkten.typ" as punkten_text: title as punkten_title
#import "/typst/spielablauf/spiel_nach_steinen.typ" as spiel_nach_steinen_text: title as spiel_nach_steinen_title
#import "/typst/spielablauf/spiel_nach_saetzen.typ" as spiel_nach_saetzen_text: title as spiel_nach_saetzen_title
// section 4
#import "/typst/regeln/sicherheit.typ" as sicherheit_text: title as sicherheit_title
#import "/typst/regeln/aktive_feldspielerinnen.typ" as aktive_feldspielerinnen_text: title as aktive_feldspielerinnen_title
#import "/typst/regeln/aus.typ" as aus_text: title as aus_title
#import "/typst/regeln/aktive_pompferinnen/aktive_pomferinnen.typ" as aktive_pomferinnen_text: title as aktive_pomferinnen_title
#import "/typst/regeln/aktive_pompferinnen/sicherer_umgang.typ" as sicherer_umgang_text: title as sicherer_umgang_title
#import "/typst/regeln/aktive_pompferinnen/beschaedigte_pompfe.typ" as beschaedigte_pompfe_text: title as beschaedigte_pompfe_title
#import "/typst/regeln/aktive_pompferinnen/pompfe_fuehren.typ" as pompfe_fuehren_text: title as pompfe_fuehren_title
#import "/typst/regeln/aktive_pompferinnen/trefferzone.typ" as trefferzone_text: title as trefferzone_title
#import "/typst/regeln/aktive_pompferinnen/gueltig_ungueltig_treffen.typ" as gueltig_ungueltig_treffen_text: title as gueltig_ungueltig_treffen_title
#import "/typst/regeln/aktive_pompferinnen/doppeltreffer.typ" as doppeltreffer_text: title as doppeltreffer_title
#import "/typst/regeln/aktive_pompferinnen/ansagen.typ" as ansagen_text: title as ansagen_title
#import "/typst/regeln/aktive_pompferinnen/pinnen.typ" as pinnen_text: title as pinnen_title
#import "/typst/regeln/aktive_pompferinnen/jugg_spielen.typ" as jugg_spielen_text: title as jugg_spielen_title
#import "/typst/regeln/aktive_lauferinnen.typ" as aktive_lauferinnen_text: title as aktive_lauferinnen_title
#import "/typst/regeln/inaktive_feldspielerinnen/inaktive_feldspielerinnen.typ" as inaktive_feldspielerinnen_text: title as inaktive_feldspielerinnen_title
#import "/typst/regeln/inaktive_feldspielerinnen/abknien.typ" as abknien_text: title as abknien_title
#import "/typst/regeln/inaktive_feldspielerinnen/strafzeit.typ" as strafzeit_text: title as strafzeit_title
#import "/typst/regeln/inaktive_feldspielerinnen/aufstehen.typ" as aufstehen_text: title as aufstehen_title
// section 5
#import "/typst/spielhelferinnen/spielhelferinnen.typ" as spielhelferinnen_text: title as spielhelferinnen_title
#import "/typst/spielhelferinnen/schiedsrichterinnen.typ" as schiedsrichterinnen_text: title as schiedsrichterinnen_title
#import "/typst/spielhelferinnen/hauptschiedsrichterin.typ" as hauptschiedsrichterin_text: title as hauptschiedsrichterin_title
#import "/typst/spielhelferinnen/nebenschiedsrichterin.typ" as nebenschiedsrichterin_text: title as nebenschiedsrichterin_title
#import "/typst/spielhelferinnen/malrichterinnen.typ" as malrichterinnen_text: title as malrichterinnen_title
#import "/typst/spielhelferinnen/punktezaehlerin.typ" as punktezaehlerin_text: title as punktezaehlerin_title

#todo[Titelblatt]

#impressum_text

#align(center)[
  #text(size: 40pt, font: "montserrat", weight: "thin")[#upper[Inhalt]]
]
#columns(2, outline(title: none))

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
#pagebreak()
==== #kette_title
#kette_text
== #kleidung_title
#kleidung_text

= Team
== #spielerinnen_title
#spielerinnen_text
== #zusammensetzung_title
#zusammensetzung_text

= Spielablauf
== #spielzug_title
#spielzug_text
== #aufstellung_title
#aufstellung_text
== #einleiten_title
#einleiten_text
=== #fruehstart_title
#fruehstart_text
== #punkten_title
#punkten_text
== #spiel_nach_steinen_title
#spiel_nach_steinen_text
== #spiel_nach_saetzen_title
#spiel_nach_saetzen_text

= Regeln
== #sicherheit_title
#sicherheit_text
== #aktive_feldspielerinnen_title
#aktive_feldspielerinnen_text
== #aus_title
#aus_text
== #aktive_pomferinnen_title
#aktive_pomferinnen_text
=== #sicherer_umgang_title
#sicherer_umgang_text
=== #beschaedigte_pompfe_title
#beschaedigte_pompfe_text
=== #pompfe_fuehren_title
#pompfe_fuehren_text
=== #trefferzone_title
#trefferzone_text
=== #gueltig_ungueltig_treffen_title
#gueltig_ungueltig_treffen_text
=== #doppeltreffer_title
#doppeltreffer_text
=== #ansagen_title
#ansagen_text
=== #pinnen_title
#pinnen_text
=== #jugg_spielen_title
#jugg_spielen_text
== #aktive_lauferinnen_title
#aktive_lauferinnen_text
== #inaktive_feldspielerinnen_title
#inaktive_feldspielerinnen_text
=== #abknien_title
#abknien_text
=== #strafzeit_title
#strafzeit_text
=== #aufstehen_title
#aufstehen_text

= Spielhelfer*innen
== #spielhelferinnen_title
#spielhelferinnen_text
== #schiedsrichterinnen_title
#schiedsrichterinnen_text
=== #hauptschiedsrichterin_title
#hauptschiedsrichterin_text
=== #nebenschiedsrichterin_title
#nebenschiedsrichterin_text
=== #malrichterinnen_title
#malrichterinnen_text
=== #punktezaehlerin_title
#punktezaehlerin_text

#todo[Letzte Seite]
