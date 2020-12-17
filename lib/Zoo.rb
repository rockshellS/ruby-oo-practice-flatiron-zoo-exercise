class Zoo
attr_accessor  :name, :location

@@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end



    def animals
        Animal.all.select do |animal_instance| 
            animal_instance.zoo == self
        end
    end


    def animal_species
        animals.map {|animal_instance| animal_instance.species }.uniq
    end


    def find_by_species(species)
        animals.map do |animal_instance|
            animal_instance.species 
        end
    end

    def animal_nickname
        animals.map do |animal_instance|
            animal_instance.nickname
        end
    end

    def self.find_by_location(location)
        all.select do |zoo_instance|
            zoo_instance.location == location 
        end
    end

end
