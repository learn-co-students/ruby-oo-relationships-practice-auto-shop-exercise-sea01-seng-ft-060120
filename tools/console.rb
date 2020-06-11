require_relative '../config/environment.rb'

#CarOwner
daniel = CarOwner.new("Daniel")
liam = CarOwner.new("Liam")
rodger = CarOwner.new("Rodger")

#Mechanic
truck_mech = Mechanic.new("dale", "trucks")
van_mech = Mechanic.new("stu", "vans")
sports_mech = Mechanic.new("todd", "sports")

#Car
c1 = Car.new("toyata", "tundra", "trucks", truck_mech, daniel)
c2 = Car.new("volkswagon", "bus", "vans", van_mech, liam)
c3 = Car.new("BMW", "M3", "sports", sports_mech, rodger)
c3 = Car.new("Chevy", "Silvarado", "trucks", truck_mech, rodger)

binding.pry
