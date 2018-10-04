require "cars"

describe Cars do
	before do
		@car = Cars.new(nil,nil,nil)
	end

	it "should return nil for each  @car method" do
		expect(@car.id).to eql(nil)
		expect(@car.price_per_day).to eql(nil)
		expect(@car.price_per_km).to eql(nil)
	end

	describe ".all" do
		it "should return an array" do
			expect(Cars.all.class).to eq(Array)
		end

		context "given 0 as array index" do
			it "should return the car with id=1" do
				expect(Cars.all[0].id).to eq(1)
			end
			it "should return the car with price_per_day=2000" do
				expect(Cars.all[0].price_per_day).to eq(2000)
			end
			it "should return the car with price_per_km=10" do
				expect(Cars.all[0].price_per_km).to eq(10)
			end
		end

		context "given 1 as array index" do
			it "should return the car with id=2" do
				expect(Cars.all[1].id).to eq(2)
			end
			it "should return the car with price_per_day=3000" do
				expect(Cars.all[1].price_per_day).to eq(3000)
			end
			it "should return the car with price_per_km=15" do
				expect(Cars.all[1].price_per_km).to eq(15)
			end
		end

		context "given 2 as array index" do
			it "should return the car with id=3" do
				expect(Cars.all[2].id).to eq(3)
			end
			it "should return the car with price_per_day=1700" do
				expect(Cars.all[2].price_per_day).to eq(1700)
			end
			it "should return the car with price_per_km=8" do
				expect(Cars.all[2].price_per_km).to eq(8)
			end
		end	
	end

	describe ".find" do
		context "given 2" do
			it "should return the car with id=2" do
				expect(Cars.find(2).id).to eq(2)
			end
			it "should return the car with price_per_day=3000" do
				expect(Cars.find(2).price_per_day).to eq(3000)
			end
			it "should return the car with price_per_km=15" do
				expect(Cars.find(2).price_per_km).to eq(15)
			end
		end

		context "given 3" do
			it "should return the car with id=3" do
				expect(Cars.find(3).id).to eq(3)
			end
			it "should return the car with price_per_day=1700" do
				expect(Cars.find(3).price_per_day).to eq(1700)
			end
			it "should return the car with price_per_km=8" do
				expect(Cars.find(3).price_per_km).to eq(8)
			end
		end
	end
end