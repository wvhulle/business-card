// Business card — Back
// Imports logo, shows contact + focus areas
#set page(width: 85mm, height: 55mm, margin: 5mm)
#set text(font: "Fira Sans")
#let navy = rgb("#030038")
#let mint = rgb("#5cc49a")

#v(4mm)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  [
    #set text(size: 9pt, weight: 700, fill: navy)
    Contact
    #rect(width: 100%, height: 1pt, fill: mint, radius: 0.5pt)
    #v(2mm)
    #set text(size: 7.5pt, fill: navy)
    #set par(leading: 0.6em)
    #link("mailto:willemvanhulle@pm.me", "willemvanhulle@pm.me") \
    #link("tel:+32479080252", "+32 479 080 252") \
    #link("https://www.willemvanhulle.tech", "willemvanhulle.tech") \
    Ghent, Belgium
  ],
  [
    #set text(size: 9pt, weight: 700, fill: navy)
    Expertise
    #rect(width: 100%, height: 1pt, fill: mint, radius: 0.5pt)
    #v(2mm)
    #set text(size: 7.5pt, fill: navy)
    #set par(leading: 0.6em)
    Distributed systems \
    Rust & Tokio \
    Formal verification \
    Railway automation \
    CI/CD & DevOps
  ],
)



