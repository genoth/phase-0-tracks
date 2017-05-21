# Box of Art Supplies

box_of_art_supplies = {
  paintbrushes: {
    types: [
      "flat",
      "round",
      "filbert"
      ],
    use: 'painting',
    condition: 'used',
  },
  markers: {
    types: [
      "sharpie",
      "washable",
      "fine art"
    ],
    use: 'drawing',
    condition: 'new'
  },
  pencils: {
    types: [
      "colored pencils",
      "drafting",
      "ebony"
    ],
    use: 'drawing',
    condition: 'new'
  },
  paper: {
    types: [
      "recycled",
      "cardstock",
      "tracing",
      "heavyweight",
    ],
    use: 'multiple',
    condition: 'new'
  },
  canvas: {
    types: [
      "small",
      "medium",
      "large",
    ],
    use: 'painting',
    condition: 'used'
  }
}

# Retrieve 1st item in paintbrush type array
p box_of_art_supplies[:paintbrushes][:types][1]

# Retrieve value for canvas condition
puts box_of_art_supplies[:canvas][:condition]

# Add a new paintbrush type to array, and print paintbrush types to verify
box_of_art_supplies[:paintbrushes][:types].push('bright')
p box_of_art_supplies[:paintbrushes][:types]

# Change value for paper condition, then print new value to verify
box_of_art_supplies[:paper][:condition] = "like new"
puts box_of_art_supplies[:paper][:condition]

# Retrieve array of pencil types
p box_of_art_supplies[:pencils][:types]

# Capitalize condition value of markers
puts box_of_art_supplies[:markers][:condition].capitalize

# Alphabetize paper types
p box_of_art_supplies[:paper][:types].sort!

# Add new pencil type to array, and print pencil types to verify
box_of_art_supplies[:pencils][:types] << "No. 2"
p box_of_art_supplies[:pencils][:types]

# Add new type of art tool (key) to box_of_art_supplies hash
box_of_art_supplies[:adhesives] = ""

# Print art tools (keys)
box_of_art_supplies.each {|tool, value|
  puts tool
}




