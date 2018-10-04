require "./lib/manage_options"
require "./lib/commissions"

def build_actions_array(car, rental, rental_prices)
	[
		{
			:who => "driver",
			:type => "debit",
			:amount => rental_prices[:price] + manage_options("driver", rental)
		},{
			:who => "owner",
			:type => "credit",
			:amount => rental_prices[:price] - commissions_fee(car, rental) + manage_options("owner", rental)
		},{
			:who => "insurance",
			:type => "credit",
			:amount => rental_prices[:commission][:insurance_fee]
		},{
			:who => "assistance",
			:type => "credit",
			:amount => rental_prices[:commission][:assistance_fee]
		},{
			:who => "drivy",
			:type => "credit",
			:amount => rental_prices[:commission][:drivy_fee] + manage_options("drivy", rental)
		},
	]
end