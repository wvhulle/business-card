// Business card — Front
// Uses logo.svg and key identity text
#set page(width: 85mm, height: 55mm, margin: 5mm)
#set text(font: "Fira Sans")
#let navy = rgb("#030038")
#let mint = rgb("#5cc49a")

// Center everything vertically and create better balance
#place(center + horizon)[
  #grid(
    columns: (auto, 1fr),
    align: horizon,
    image("logo.svg", width: 40mm),
    [
      #set text(size: 15pt, weight: 700, fill: navy)
      Willem Vanhulle

      #v(1mm)
      #set text(size: 10pt, weight: 600, fill: navy)
      Software engineer

      #v(3mm)
      #set text(size: 8pt, fill: navy, tracking: 0.5pt)
      Distributed systems  • Formal methods • Full-stack
    ],
  )
]
