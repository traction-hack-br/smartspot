# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ParkingSpotSize.create([
    { description: 'Motorcycle' },
    { description: 'Passenger Car' },
    { description: 'Truck' }
])

ParkingSpotStatus.create([
    { description: 'Operational'},
    { description: 'Maintenance'},
    { description: 'Reserved'},
    { description: 'Disabled'}
])

VehicleBrand.create([
    { name: 'Toyota' },
    { name: 'Honda' },
    { name: 'Volkswagen' },
    { name: 'Chevrolet' },
    { name: 'Ford' },
    { name: 'Nissan' }
])
