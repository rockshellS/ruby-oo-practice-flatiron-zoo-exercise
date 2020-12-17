require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here


zoo_one = Zoo.new("Best Zoo", "Denver")
zoo_two = Zoo.new("Fun Zoo", "Brighton")
zoo_three = Zoo.new("Stink Zoo", "Florida")
zoo_four = Zoo.new("Fact Fact", "Brighton")



animal_one = Animal.new("zebra", 140, "zeebs", zoo_one)
animal_two = Animal.new("pig", 250, "hot_stuff",zoo_one)
animal_three = Animal.new("zebra", 200, "stripes",zoo_three)
animal_four = Animal.new("lion", 20, "t_rex", zoo_four)


binding.pry
puts "done"
