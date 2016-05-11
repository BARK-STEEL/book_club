require_relative 'node'
require_relative 'task'

beer = Task.new('Make beer')

sanitize = Task.new('Sanitize your equipment', 30)

brew = Task.new('Brew your beer!')
brew.add_child Task.new('Bring the water to a boil', 10)
brew.add_child Task.new('Add malt extract to the boiling water', 1)

add_hops = Task.new('Add hops to the boiling water')
add_hops.add_child Task.new('Add the bittering hops', 10)
add_hops.add_child Task.new('Add the flavoring hops', 20)
add_hops.add_child Task.new('Add the finishing hops', 10)

brew.add_child add_hops
brew.add_child Task.new('Boil the wort', 10)
brew.add_child Task.new('Chill the wort', 15)
brew.add_child Task.new('Transfer the wort to a fermenting vessel', 5)

ferment = Task.new('Ferment the beer!')
ferment.add_child Task.new('Pitch the yeast', 1)
ferment.add_child Task.new('Shake up the fermenting vessel', 2)
ferment.add_child Task.new('Let beer sit in the fermenting vessel', 20160)

bottle = Task.new('Bottle your beer!')
bottle.add_child Task.new('Transfer the beer to the bottling bucket', 3)
bottle.add_child Task.new('Add priming sugar to the bottling bucket', 10)
bottle.add_child Task.new('Siphon the beer from the bottling bucket to each bottle', 20)
bottle.add_child Task.new('Crimp a cap onto each bottle with a capper', 20)

beer.add_child sanitize
beer.add_child brew
beer.add_child ferment
beer.add_child bottle

@step = 1

def iterate_steps(node)
	node.children.each do |child|
		if child.leaf?
			puts "Step #{@step}: #{child.name} for #{child.time_required} minutes."
			@step += 1
		else
			puts "\nNow it's time to #{child.name}\n\n"
			iterate_steps(child)
		end
	end
end

puts "Let's make some beer! Here are the steps:\n\n"

iterate_steps(beer)
puts "Congratulations!! Now it's time to drink some delicious brews!\n\n"
puts "Total time required: #{beer.time_required} minutes!"

puts beer[0].leaf?
puts beer[0].name
puts beer[1].time_required
