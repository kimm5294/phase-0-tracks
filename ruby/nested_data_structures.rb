westeros = {
 kings_landing: {
    rulers: "The Lannisters",
    noble_families: [
      "Payne",
      "Tyrell",
      "Clegane"
    ],
    other_info: {
      castle: "Red Keep",
      religion: "the seven",
      population: 1098712
    }
 },

 the_north: {
  rulers: "House Stark",
  noble_families: [
      "Mormont",
      "Glover",
      "Bolton"
  ],
  other_info: {
      castle: "Winterfell",
      religion: "Old Gods",
      population: 124313244
  }
 },

 nights_watch: {
  rulers: "Jon Snow",
  noble_families: [
      "Mormont",
      "Stark"
  ],
  other_info: {
    castle: "Castle Black",
    religion: "Varied",
    population: 100
  }
 },

 other_regions: [
    "Braavos",
    "Old Valyria",
    "Qarth",
    "Iron Isles"
 ]
}

puts westeros[:nights_watch][:rulers].upcase

puts westeros[:kings_landing][:other_info][:population]

puts westeros[:the_north][:noble_families][2]

p westeros[:other_regions].reverse

puts westeros[:nights_watch][:other_info][:castle]

