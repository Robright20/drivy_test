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
			it "should return the rental with start_date=2017-12-8" do
				expect(Rentals.all[0].start_date).to eq(Date.parse("2017-12-8"))
			end
			it "should return the rental with end_date=2017-12-10" do
				expect(Rentals.all[0].end_date).to eq(Date.parse("2017-12-10"))
			end
			it "should return the rental with distance=100" do
				expect(Rentals.all[0].distance).to eq(100)
			end
		end

		context "given 1 as array index" do
			it "should return the rental with id=2" do
				expect(Rentals.all[1].id).to eq(2)
			end
			it "should return the rental with car_id=1" do
				expect(Rentals.all[1].car_id).to eq(1)
			end
			it "should return the rental with start_date=2017-12-14" do
				expect(Rentals.all[1].start_date).to eq(Date.parse("2017-12-14"))
			end
			it "should return the rental with end_date=2017-12-18" do
				expect(Rentals.all[1].end_date).to eq(Date.parse("2017-12-18"))
			end
			it "should return the rental with distance=550" do
				expect(Rentals.all[1].distance).to eq(550)
			end
		end

		context "given 2 as array index" do
			it "should return the rental with id=3" do
				expect(Rentals.all[2].id).to eq(3)
			end
			it "should return the rental with car_id=2" do
				expect(Rentals.all[2].car_id).to eq(2)
			end
			it "should return the rental with start_date=2017-12-8" do
				expect(Rentals.all[2].start_date).to eq(Date.parse("2017-12-8"))
			end
			it "should return the rental with end_date=2017-12-10" do
				expect(Rentals.all[2].end_date).to eq(Date.parse("2017-12-10"))
			end
			it "should return the rental with distance=150" do
				expect(Rentals.all[2].distance).to eq(150)
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
			it "should return the rental with start_date=2017-12-14" do
				expect(Rentals.find(2).start_date).to eq(Date.parse("2017-12-14"))
			end
			it "should return the rental with end_date=2017-12-18" do
				expect(Rentals.find(2).end_date).to eq(Date.parse("2017-12-18"))
			end
			it "should return the rental with distance=550" do
				expect(Rentals.find(2).distance).to eq(550)
			end
		end

		context "given 3" do
			it "should return the rental with id=3" do
				expect(Rentals.find(3).id).to eq(3)
			end
			it "should return the rental with car_id=2" do
				expect(Rentals.find(3).car_id).to eq(2)
			end
			it "should return the rental with start_date=2017-12-8" do
				expect(Rentals.find(3).start_date).to eq(Date.parse("2017-12-8"))
			end
			it "should return the rental with end_date=2017-12-10" do
				expect(Rentals.find(3).end_date).to eq(Date.parse("2017-12-10"))
			end
			it "should return the rental with distance=150" do
				expect(Rentals.find(3).distance).to eq(150)
			end
		end
	end
end
end