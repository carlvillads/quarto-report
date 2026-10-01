#let report(title: none, authors: (), date: none, doc) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: 2.4cm,
    numbering: "1",
    header: context {
      if counter(page).get().first() > 1 {
        set text(size: 9pt, style: "italic")
        title
        v(-6pt)
        line(length: 100%, stroke: 0.4pt)
      }
    },
  )
  set text(font: "Libertinus Serif", size: 10pt, lang: "en")
  set par(justify: true)

  show heading.where(level: 1): set text(size: 13pt)
  show heading.where(level: 2): set text(size: 10pt)
  show heading.where(level: 3): set text(size: 10pt, style: "italic", weight: "regular")
  show heading: set block(above: 1.4em, below: 0.7em)
  show figure.caption: set text(size: 9.5pt)

  show raw: set text(size: 8.5pt)
  show raw.where(block: true): set block(
    width: 100%, inset: 7pt, radius: 3pt,
    fill: luma(250), stroke: 0.5pt + luma(225),
  )

  if title != none {
    align(center)[
      #text(size: 18pt, weight: "bold", title)
      #if authors.len() > 0 [ \ #v(2pt) #authors.join(", ") ]
      #if date != none [ \ #text(size: 10pt, date) ]
    ]
    v(1em)
  }

  doc
}