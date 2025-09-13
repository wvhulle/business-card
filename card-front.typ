#import "business.typ": *

#show: business-card

#place(center + horizon)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8mm,
    align: horizon,

    image("logo.svg", width: 35mm),

    [
      #name-text[Willem Vanhulle]
      #mint-divider()
      #v(1.5mm)
      #title-text[Distributed systems engineer]

    ],
  )
]
