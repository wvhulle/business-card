
// Business card template with shared styles and components

// Brand colors
#let navy = rgb("#030038")
#let mint = rgb("#5cc49a")

// Reusable components
#let mint-divider(width: 100%) = rect(
  width: width, 
  height: 1pt, 
  fill: mint, 
  radius: 0.5pt
)

#let profile-photo(path, size: 15mm) = box(
  stroke: 2pt + mint,
  radius: 50%,
  clip: true,
  image(path, width: size, height: size, fit: "cover")
)

// Typography helpers
#let heading-text(content) = text(
  size: 9pt, 
  weight: 700, 
  fill: navy,
  content
)

#let body-text(content) = text(
  size: 7.5pt, 
  fill: navy,
  content
)

#let name-text(content) = text(
  size: 16pt, 
  weight: 700, 
  fill: navy,
  content
)

#let title-text(content) = text(
  size: 10pt, 
  weight: 600, 
  fill: navy,
  content
)

// Main template function
#let business-card(body) = {
  set page(width: 85mm, height: 55mm, margin: 5mm)
  set text(font: "Fira Sans")
  set par(leading: 0.6em)
  
  body
}
