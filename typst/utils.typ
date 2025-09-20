#let brightness(color) = {
  let digit_vals = color
    .to-hex()
    .codepoints()
    .map(str.to-unicode)
    .map(it => {
      if it <= 57 { it - 48 } else { it - 87 }
    })
  let r = digit_vals.at(1) * 16 + digit_vals.at(2)
  let g = digit_vals.at(3) * 16 + digit_vals.at(4)
  let b = digit_vals.at(5) * 16 + digit_vals.at(6)
  r * 0.299 + g * 0.587 + b * 0.114
}

#let todo(body, color: red) = {
  let text_color = if brightness(color) >= 186 { black } else { white }
  set text(size: 20pt, fill: text_color)
  rect(
    fill: color,
    inset: 8pt,
    radius: 4pt,
    [*TODO: #body*],
  )
}

#let weblink(display: str, url: str) = {
  if display == str {
    display = url
  }
  show link: set text(fill: blue)
  show link: underline
  link(url)[#display]
}
