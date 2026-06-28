

#import "/typst/designs/colors.typ" as colors
#import "/typst/designs/boxes.typ" as boxes
#set par(justify: true)
#let outside-pos = state("outside-pos", right)
#let top_margin = 3cm

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
        rect(width: 1.5cm, height: 20cm, fill: colors.light-background),
      )
      for dy in (1.6cm, 4.6cm, 7.6cm, 10.6cm) {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: dy + top_margin,
          rect(width: 1.5cm, height: 1.5cm, fill: colors.mid-background),
        )
      }
      if section_number > 0 {
        place(
          top + outside-pos.get(),
          dx: 0cm,
          dy: 0.1cm + 1.5cm * section_number + top_margin,
          rect(width: 1.5cm, height: 1.5cm, fill: colors.dark-background),
        )
      }
    }
  ),
)

// headings
#set heading(numbering: "1.1.1.1", supplement: none)
#show heading: set text(font: "montserrat", fill: rgb("#4F4F51"))
#show heading: upper
#show heading.where(level: 1, outlined: true): it => context {
  set page(footer: none)
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
      rect(width: 3.5cm + 0.23cm * nb, height: 1.5cm, fill: colors.dark-background),
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




#set text(lang: "de", size: 13pt, font: "vollkorn", fill: colors.textcolor)

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
#include "/typst/maintext/spielfeld.typ"

= Pompfen <pompfen>

#include "/typst/maintext/pompfen.typ"

#align(left)[
  #set par(justify: false)
  = Teams und Ausrüstung
]

#include "/typst/maintext/team.typ"

= Spielablauf

#include "/typst/maintext/spielablauf.typ"


= Spielregeln

#include "/typst/maintext/regeln.typ"

= Spielhelfer\*innen

#include "/typst/maintext/spielhelferinnen.typ"


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
