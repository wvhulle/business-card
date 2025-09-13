// Business card — Front
// Uses logo.svg and key identity text
#import "business.typ": *

#show: business-card

// Center everything vertically and create better balance
#place(center + horizon)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8mm,
    align: horizon,
    image("logo.svg", width: 35mm),
    [
      #set text(size: 16pt, weight: 700, fill: navy)
      Willem Vanhulle

      #mint-divider()
      #set text(size: 10pt, weight: 600, fill: navy)
      Distributed systems engineer


    ],
  )
]
