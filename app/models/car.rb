class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all= []

  def initialize(make, model, classification, mechanic, car_owner)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end
  
  # `Car.classifications` Get a list of all car classifications
  def self.classifications
     self.all.collect {|car|car.classification}
  end

  # Car.find_mechanics(classification) Get a list of mechanics that have an 
  # expertise that matches the passed in car classification
  def self.find_mechanics(classification)
    array = self.all.select {|car| car.classification == classification}
    array.collect {|classification| classification.mechanic}
  end
end
