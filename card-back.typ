// Business card — Back
// Imports logo, shows contact + focus areas
#import "business.typ": *

#show: business-card

#align(left)[
  #profile-photo("willem.jpg")
]

#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,
  [
    #set text(size: 9pt, weight: 700, fill: navy)
    Contact
    #mint-divider()

    #set text(size: 7.5pt, fill: navy)
    #set par(leading: 0.6em)
    #link("mailto:willemvanhulle@pm.me", "willemvanhulle@pm.me") \
    #link("tel:+32479080252", "+32 479 080 252") \
    #link("https://www.willemvanhulle.tech/blog", "willemvanhulle.tech/blog") \
    Ghent, Belgium
  ],
  [
    #set text(size: 9pt, weight: 700, fill: navy)
    Expertise
    #mint-divider()

    #set text(size: 7.5pt, fill: navy)
    #set par(leading: 0.6em)
    Distributed systems \
    Formal verification \
    Railway automation \
    CI/CD & DevOps
  ],
)



