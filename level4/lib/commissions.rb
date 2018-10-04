def commissions_fee(car, rental)
	(0.3 * rental_price(car, rental)).to_i
end

def insurance_fee(car, rental)
	(commissions_fee(car, rental) / 2).to_i
end

def assistance_fee(rental)
	number_of_days(rental) * 100
end

def drivy_fee(car, rental)
	commissions_fee(car, rental) - insurance_fee(car, rental) - assistance_fee(rental)
end

def build_hash_of_commission(car, rental)
	hash_of_commission = {
		:insurance_fee => insurance_fee(car, rental),
		:assistance_fee => assistance_fee(rental),
		:drivy_fee => drivy_fee(car, rental)
	}
end