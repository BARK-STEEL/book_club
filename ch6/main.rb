require_relative 'task'
require_relative 'composite_task'

require_relative 'make_beer_task'

require_relative 'sanitize_equipment_task'

require_relative 'brew_task'
require_relative 'heat_water_task'
require_relative 'add_malt_task'
require_relative 'add_hops_task'
require_relative 'add_bittering_hops_task'
require_relative 'add_flavoring_hops_task'
require_relative 'add_finishing_hops_task'
require_relative 'boil_wort_task'	
require_relative 'chill_wort_task'
require_relative 'transfer_wort_task'

require_relative 'ferment_task'
require_relative 'pitch_yeast_task'
require_relative 'aerate_wort_task'
require_relative 'let_beer_sit_task'

require_relative 'bottle_task'
require_relative 'transfer_to_bottling_bucket_task'
require_relative 'add_priming_sugar_task'
require_relative 'fill_bottles_task'
require_relative 'cap_bottles_task'

beer = MakeBeerTask.new
puts "#{beer.time_required} minutes to make beer."
puts beer

task = beer[1][2][0]

while task
  puts "task: #{task}"
  task = task.parent
end
