require 'json'

#Transforming cars data into ruby objects giving them usefull methods
class Cars
	attr_reader :id, :price_per_day, :price_per_km
	def initialize(id, price_per_day, price_per_km)
		@id, @price_per_day, @price_per_km = id, price_per_day, price_per_km
	end

#return all cars objects created into an array
	def self.all
		all_cars = []
		input_json = File.read('./data/input.json')
		input_hash = JSON.parse(input_json)
		input_hash["cars"].each do |car|
			all_cars << Cars.new(car["id"],car["price_per_day"],car["price_per_km"])
		end
		return all_cars
	end

#return a car object found by it id
	def self.find(id)
		self.all.each do |car|
			return car if car.id == id
		end
	end
end