def build_actions_array(car, rental, rental_prices)
	[
		{
			:who => "driver",
			:type => "debit",
			:amount => rental_prices[:price]
		},{
			:who => "owner",
			:type => "credit",
			:amount => rental_prices[:price] - commissions_fee(car, rental)
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
			:amount => rental_prices[:commission][:drivy_fee]
		},
	]
end