#import "business.typ": *

#show: business-card

#profile-photo("willem.jpg")


#grid(
  columns: (1fr, 1fr),
  column-gutter: 8mm,

  [
    #heading-text[Contact]
    #mint-divider()

    #body-text[
      #link("mailto:willemvanhulle@pm.me", "willemvanhulle@pm.me") \
      #link("tel:+32479080252", "+32 479 080 252") \
      #link("https://www.willemvanhulle.tech/blog", "willemvanhulle.tech/blog") \
      Ghent, Belgium
    ]
  ],

  [
    #heading-text[Expertise]
    #mint-divider()

    #body-text[
      Distributed systems \
      Formal verification \
      Railway automation \
      CI/CD & DevOps
    ]
  ],
)



