require_relative 'node'

beer = Node.new('Make beer')

# Sanitize

sanitize = Node.new('Sanitize your equipment', 30)

# Brew

brew = Node.new('Brew your beer!')
brew << Node.new('Bring the water to a boil', 10)
brew << Node.new('Add malt extract to the boiling water', 1)

add_hops = Node.new('Add hops to the boiling water!')
add_hops << Node.new('Add the bittering hops', 10)
add_hops << Node.new('Add the flavoring hops', 20)
add_hops << Node.new('Add the finishing hops', 10)
brew << add_hops

brew << Node.new('Boil the wort', 10)
brew << Node.new('Chill the wort', 15)
brew << Node.new('Transfer the wort to a fermenting vessel', 5)

# Ferment

ferment = Node.new('Ferment the beer!')
ferment << Node.new('Pitch the yeast', 1)
ferment << Node.new('Shake up the fermenting vessel', 2)
ferment << Node.new('Let beer sit in the fermenting vessel', 20160)

# Bottle

bottle = Node.new('Bottle your beer!')
bottle << Node.new('Transfer the beer to the bottling bucket', 3)
bottle << Node.new('Add priming sugar to the bottling bucket', 10)

bottling = Node.new('Add the beer to your bottles!')
10.times do |num|
	bottling << Node.new("Bottle ##{num+1}: Siphon the beer from the bottling bucket to the bottle", 1)
	bottling << Node.new('Crimp a cap onto the bottle with a capper', 1)
end
bottle << bottling

beer << sanitize
beer << brew
beer << ferment
beer << bottle

beer.recipe

puts "Is '#{beer[0].name}' a leaf: #{beer[0].leaf?}"
puts "Is '#{beer[1].name}' a leaf: #{beer[1].leaf?}"
