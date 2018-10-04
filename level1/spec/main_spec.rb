require './main'
require 'cars'
require 'rentals'

describe "main" do
	rental = Rentals.find(1)
	car = Cars.find(rental.car_id)


	describe "time_component" do
		context "given the first rental object and its associated car" do
			it "returns 6000" do
				expect(time_component(car, rental)).to eql(6000)
			end
		end
	end

	describe "distance_component" do
		context "given the first rental object and its associated car" do
			it "returns 1000" do
				expect(distance_component(car, rental)).to eql(1000)
			end
		end
	end

	describe "rental_price" do
		context "given the first rental object and its associated car" do
			it "returns 7000" do
				expect(rental_price(car, rental)).to eql(7000)
			end
		end
	end

	describe "array_of_rental_price" do
		context "given 0 as array index" do
			it "returns an hash" do
				expect(array_of_rental_price[0].class).to eql(Hash)
			end
			it "returns 7000 as the 'price' of the fist hash" do
				expect(array_of_rental_price[0][:price]).to eql(7000)
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