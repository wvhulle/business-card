
// Business card template with shared styles and components
#import "@preview/tiaoma:0.3.0": qrcode

// Brand colors
#let navy = rgb("#030038")
#let mint = rgb("#5cc49a")

// Reusable components
#let mint-divider(width: 100%) = [
  #v(-0.5em)
  #rect(
    width: width,
    height: 1pt,
    fill: mint,
    radius: 0.5pt,
  )
]

#let profile-photo(path, size: 15mm) = box(
  stroke: 2pt + mint,
  radius: 50%,
  clip: true,
  image(path, width: size, height: size, fit: "cover"),
)

#let qr-code(url, size: 20mm) = {
  let border-width = 2pt
  let padding = 3pt
  let qr-size = size - 2 * (border-width + padding)

  grid(
    columns: (1fr, 1fr),
    column-gutter: 3mm,
    align: horizon,

    // Left cell: CV label
    text(weight: 700)[CV:],

    // Right cell: QR code
    box(
      stroke: border-width + mint,
      radius: 3pt,
      inset: padding,
      {
        set align(center)
        qrcode(url, width: qr-size)
      },
    ),
  )
}

// Typography helpers
#let title-text(content) = text(
  size: 10pt,
  weight: 600,
  fill: navy,
  content,
)

// Main template function
#let business-card(body) = {
  set page(width: 85mm, height: 55mm, margin: 5mm)
  set text(font: "Fira Sans", size: 7.5pt, fill: navy)
  set par(leading: 0.6em)

  // Configure heading styling
  show heading.where(level: 1): it => [
    #text(
      size: 16pt,
      weight: 700,
      fill: navy,
      it.body,
    )
    #mint-divider()
  ]

  show heading.where(level: 2): it => [
    #text(
      size: 9pt,
      weight: 700,
      fill: navy,
      it.body,
    )
    #mint-divider()
  ]

  body
}
