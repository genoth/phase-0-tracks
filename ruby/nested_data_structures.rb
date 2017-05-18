# Box of Art Supplies

box_of_art_supplies = {
  paintbrushes: {
    pretty_name: 'Paintbrushes',
    use: 'painting',
    condition: 'used',
    types: [
    'flat',
    'round',
    'filbert'
    ],
  },
  markers: {
    types: [
    'sharpie',
    'washable',
    'fine art'
    ],
    use: 'drawing',
    condition: 'new'
  }
}

puts box_of_art_supplies[:paintbrushes][:types][0]