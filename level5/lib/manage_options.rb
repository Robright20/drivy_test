require './lib/cars'
require './lib/rentals'
require './lib/options'

def manage_options(position, rental)
	driver = 0
	owner = 0
	drivy = 0
	number_of_days = (rental.end_date - rental.start_date).to_i + 1

	Option.all.each do |option|
		case
		when option.rental_id == rental.id && option.type =="gps"
			owner += 500 * number_of_days
		when option.rental_id == rental.id && option.type =="baby_seat"
			owner += 200 * number_of_days
		when option.rental_id == rental.id && option.type =="additional_insurance"
			drivy += 1000 * number_of_days
		end
	end
	
	driver = owner + drivy

	case position
	when "drivy"
		return drivy
	when "owner"
		return owner
	when "driver"
		return driver
	end
end