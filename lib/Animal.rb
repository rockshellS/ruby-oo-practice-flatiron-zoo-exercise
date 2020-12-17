class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :num_weight

    @@all = []
    def initialize(species, num_weight, nickname, zoo)
        @species = species
        @num_weight = num_weight
        @nickname = nickname
        @zoo = zoo
        @@all << self

    end


    def self.all
        @@all
    end

     
    def zoo
        @zoo
     end

     

     def self.find_by_species(species)
        self.all.select do |animal_instance|
            animal_instance.species == species
        end
    end


end
