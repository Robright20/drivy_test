#compute the time component applying discount rules

def apply_discount(number_of_days, price_per_day)
	#links discount point to the discount value
	hash_of_discount = { "1" => 0.1,
						 "4" => 0.3,
						 "10" => 0.5 }

	#keeps the key integer of hash_of_discount
	array_of_discount = [1,4,10]
	price_after_discount = 0

	array_of_discount.push(number_of_days)
	array_of_discount.sort!

	array_of_discount.map.with_index do |var, i|
		if var == 1
			multiplicateur = 1
			price_after_discount = price_per_day
		elsif var <= number_of_days
			multiplicateur = var - array_of_discount[i-1]
			price_after_discount += multiplicateur * (price_per_day - (hash_of_discount["#{array_of_discount[i-1]}"] * price_per_day).to_i)
		end
	end

	return price_after_discount
end