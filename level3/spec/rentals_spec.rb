require "rentals"
require "date"

describe Rentals do
	before do
		@rental = Rentals.new(nil,nil,nil,nil,nil)
	end

	it "should return nil for each  @rental method" do
		expect(@rental.id).to eql(nil)
		expect(@rental.car_id).to eql(nil)
		expect(@rental.start_date).to eql(nil)
		expect(@rental.end_date).to eql(nil)
		expect(@rental.distance).to eql(nil)
	end

	describe ".all" do
		it "should return an array" do
			expect(Rentals.all.class).to eq(Array)
		end

		context "given 0 as array index" do
			it "should return the rental with id=1" do
				expect(Rentals.all[0].id).to eq(1)
			end
			it "should return the rental with car_id=1" do
				expect(Rentals.all[0].car_id).to eq(1)
			end
			it "should return the rental with start_date=2015-12-8" do
				expect(Rentals.all[0].start_date).to eq(Date.parse("2015-12-8"))
			end
			it "should return the rental with end_date=2015-12-8" do
				expect(Rentals.all[0].end_date).to eq(Date.parse("2015-12-8"))
			end
			it "should return the rental with distance=100" do
				expect(Rentals.all[0].distance).to eq(100)
			end
		end
	end

	describe ".find" do
		context "given 2" do
			it "should return the rental with id=2" do
				expect(Rentals.find(2).id).to eq(2)
			end
			it "should return the rental with car_id=1" do
				expect(Rentals.find(2).car_id).to eq(1)
			end
			it "should return the rental with start_date=2015-03-31" do
				expect(Rentals.find(2).start_date).to eq(Date.parse("2015-03-31"))
			end
			it "should return the rental with end_date=2015-04-01" do
				expect(Rentals.find(2).end_date).to eq(Date.parse("2015-04-01"))
			end
			it "should return the rental with distance=300" do
				expect(Rentals.find(2).distance).to eq(300)
			end
		end
	end
end