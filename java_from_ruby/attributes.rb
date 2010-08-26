require 'java'
java_import 'Car'
car = Car.new

# START:main
car.setPrice(20_000)
car.price = 20_000
# END:main
