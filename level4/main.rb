require 'json'
require './lib/cars'
require './lib/rentals'
require './lib/discounts'
require './lib/commissions'
require './lib/actions'

#gives the number of rental days
def number_of_days(rental)
	number_of_days = (rental.end_date - rental.start_date)
	number_of_days = number_of_days.to_i + 1
end

#gives the number of rental days multiplied by the car's price per day
def time_component(car, rental)
	apply_discount(number_of_days(rental), car.price_per_day)
end

#gives the number of km multiplied by the car's price per km
def distance_component(car, rental)
	rental.distance * car.price_per_km
end

def rental_price(car, rental)
	time_component(car,rental) + distance_component(car, rental)
end

#we add commission to it and use result to build array of actions
def array_of_rental_price
	rental_prices = []
	Rentals.all.each do |rental|
		car = Cars.find(rental.car_id)
		rental_prices << { :id => rental.id, :actions => build_actions_array(car, rental, {:price => rental_price(car, rental), :commission => build_hash_of_commission(car, rental) })}
	end
	return rental_prices
end

def save_rental_prices
	File.open("./data/output.json","w+") do |line|
		line.write JSON.pretty_generate(:rentals => array_of_rental_price)
	end

	return rental_prices_save?
end

def rental_prices_save?
	output_hash = JSON.parse(File.read("./data/output.json"), {:symbolize_names => true})
	output_hash[:rentals] == array_of_rental_price
end

save_rental_prices