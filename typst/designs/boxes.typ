#import "@preview/showybox:2.0.4": showybox
#import "colors.typ"
#let fluffbox(body, title: none) = {
  if title == none {
    showybox(
      frame: (
        border-color: colors.dark-background,
        title-color: colors.mid-background,
        body-color: colors.light-background,
      ),
      title-style: (
        color: colors.textcolor,
        weight: "regular",
        align: center,
      ),
      body-style: (
        color: colors.textcolor,
      ),
      shadow: (
        offset: 3pt,
        color: colors.dark-background,
      ),
      body,
    )
  } else {
    showybox(
      frame: (
        border-color: colors.dark-background,
        title-color: colors.mid-background,
        body-color: colors.light-background,
      ),
      title-style: (
        color: colors.textcolor,
        weight: "regular",
        align: center,
      ),
      body-style: (
        color: colors.textcolor,
      ),
      shadow: (
        offset: 3pt,
        color: colors.dark-background,
      ),
      title: title,
      body,
    )
  }
}
