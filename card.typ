#import "business.typ": *

#show: business-card

#place(center + horizon)[
  #grid(
    columns: (auto, 1fr),
    column-gutter: 8mm,
    align: horizon,

    image("logo.svg", width: 35mm),

    [
      = Willem Vanhulle
      #v(1.5mm)
      #title-text[Distributed systems]

    ],
  )
]

#pagebreak()

#grid(
  columns: (1.3fr, 1fr),
  rows: (0.6fr, 1fr),
  column-gutter: 8mm,
  row-gutter: 6mm,

  // Top-left: Profile photo
  align(left, profile-photo("willem.jpg")),

  // Top-right: QR code
  align(right)[
    #qr-code("https://willemvanhulle.tech/cv.pdf", size: 15mm)

  ],

  // Bottom-left: Contact
  [
    == Contact me!

    #link("mailto:willemvanhulle@pm.me", "willemvanhulle@protonmail.com") \
    #link("tel:+32479080252", "+32 479 080 252") \
    #link("https://www.willemvanhulle.tech/blog", "willemvanhulle.tech/blog") \
    Ghent, Belgium
  ],

  // Bottom-right: Expertise
  [
    == Expertise

    Distributed systems \
    Formal verification \
    Automation & robotics \
    Teaching & mentoring
  ],
)
