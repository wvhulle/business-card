
#let navy = rgb("#030038")
#let mint = rgb("#5cc49a")

#let mint-divider(width: 100%) = {
  rect(width: width, height: 1pt, fill: mint, radius: 0.5pt)
}

// Circular profile photo with mint border
#let profile-photo(image-path, size: 15mm) = {
  box(
    stroke: 2pt + mint,
    radius: 50%,
    clip: true,
    image(image-path, width: size, height: size, fit: "cover"),
  )
}

// Business card template function
#let business-card(body) = {
  set page(width: 85mm, height: 55mm, margin: 5mm)
  set text(font: "Fira Sans")

  body
}
