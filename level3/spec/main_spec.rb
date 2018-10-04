require './main'
require 'cars'
require 'rentals'

describe "main" do
	rental = Rentals.find(3)
	car = Cars.find(rental.car_id)


	describe "time_component" do
		context "given the third rental object and its associated car" do
			it "returns 17800" do
				expect(time_component(car, rental)).to eql(17800)
			end
		end
	end

	describe "distance_component" do
		context "given the third rental object and its associated car" do
			it "returns 10000" do
				expect(distance_component(car, rental)).to eql(10000)
			end
		end
	end

	describe "rental_price" do
		context "given the third rental object and its associated car" do
			it "returns 27800" do
				expect(rental_price(car, rental)).to eql(27800)
			end
		end
	end

	describe "array_of_rental_price" do
		context "given 2 as array index" do
			it "returns an hash" do
				expect(array_of_rental_price[2].class).to eql(Hash)
			end
			it "returns 27800 as the 'price' of the third hash" do
				expect(array_of_rental_price[2][:price]).to eql(27800)
			end
			it "returns 4170 as the 'insurance_fee' commission" do
				expect(array_of_rental_price[2][:commission][:insurance_fee]).to eql(4170)
			end
			it "returns 1200 as the 'assistance_fee' commission" do
				expect(array_of_rental_price[2][:commission][:assistance_fee]).to eql(1200)
			end
			it "returns 2970 as the 'drivy_fee' commission" do
				expect(array_of_rental_price[2][:commission][:drivy_fee]).to eql(2970)
			end
		end
	end

	describe "save_rental_prices" do
		context "saves successfully ?" do
			it "returns true" do
				expect(save_rental_prices).to eql(true)
			end
		end
	end
end