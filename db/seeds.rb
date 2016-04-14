# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create ([
  {name: "Chick-Fil-A", location: "21550 Valley Blvd, City of Industry, CA 91789", description:"Chick-fil-A (chik-fil-ay, a play on the US pronunciation of "fillet") is an American fast food restaurant chain headquartered in the Atlanta suburb of College Park, Georgia, specializing in chicken sandwiches. Founded in May 1946, it has more than 1,950 restaurants, mainly in the southeastern United States.", cuisine:"American"}

  {name: "Chipotle", location: "17501 Colima Rd, City of Industry, CA 91748", description: "Chipotle Mexican Grill, Inc. is a chain of fast food restaurants in the United States, United Kingdom,Canada, Germany, and France, specializing in Mission burritos and tacos. Its name derives from chipotle, the Nahuatl name for a smoked and dried jalapeño chili pepper.", cuisine:"Mexican-American"}

  {name: "McDonald's", location: "17951 Colima Rd, Rowland Heights, CA 91748", description: "McDonald's is the world's largest chain of hamburger fast food restaurants, serving around 68 million customers daily in 119 countries across more than 36,000 outlets. Founded in the United States in 1940, the company began as a barbecue restaurant operated by Richard and Maurice McDonald. In 1948, they reorganized their business as a hamburger stand using production line principles. Businessman Ray Kroc joined the company as a franchise agent in 1955. He subsequently purchased the chain from the McDonald brothers and oversaw its worldwide growth.  A McDonald's restaurant is operated by either a franchisee, an affiliate, or the corporation itself. The McDonald's Corporation revenues come from the rent, royalties, and fees paid by the franchisees, as well as sales in company-operated restaurants. In 2012, the company had annual revenues of $27.5 billion and profits of $5.5 billion. According to a 2012 BBC report, McDonald's is the world's second largest private employer—behind Walmart—with 1.9 million employees, 1.5 million of whom work for franchises.  McDonald's primarily sells hamburgers, cheeseburgers, chicken, french fries, breakfast items, soft drinks, milkshakes, and desserts. In response to changing consumer tastes, the company has expanded its menu to include salads, fish, wraps, smoothies, fruit, and seasoned fries.", cuisine:"American"}

  {name: "Wendy's", location:"2300 S Azusa Ave West Covina, CA 91792", description: "Wendy's is an international fast food restaurant chain founded by Dave Thomas on November 15, 1969, in Columbus, Ohio, United States. The company moved its headquarters to Dublin, Ohio, on January 29, 2006.", cuisine:"American"}

  {name: "Chelo Creamery", location: "18558 Gale Ave Ste 158 City of Industry, CA 91748", description: "Serving ice cream.", cuisine:"Ice cream"}
  ])




