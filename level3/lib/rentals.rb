require 'json'
require 'date'

#Transforming cars data into ruby objects giving them usefull methods
class Rentals
	attr_reader :id, :car_id, :start_date, :end_date, :distance

	def initialize(id, car_id, start_date, end_date, distance)
		@id, @car_id, @start_date, @end_date, @distance = id, car_id, start_date, end_date, distance
	end

#return all cars objects created into an array
	def self.all
		all_rentals = []
		input_json = File.read('./data/input.json')
		input_hash = JSON.parse(input_json)
		input_hash["rentals"].each do |rental|
			all_rentals << Rentals.new(rental["id"], rental["car_id"], Date.parse(rental["start_date"]), Date.parse(rental["end_date"]), rental["distance"])
		end
		return all_rentals
	end
	
#return a car object found by it id
	def self.find(id)
		self.all.each do |rental|
			return rental if rental.id == id
		end
	end
end