require 'json'

#Transforming option data into ruby objects giving them usefull methods
class Option
	attr_reader :id, :rental_id, :type
	def initialize(id, rental_id, type)
		@id, @rental_id, @type = id, rental_id, type
	end

#return all option objects created into an array
	def self.all
		all_options = []
		input_json = File.read('./data/input.json')
		input_hash = JSON.parse(input_json)
		input_hash["options"].each do |option|
			all_options << Option.new(option["id"],option["rental_id"],option["type"])
		end
		return all_options
	end

#return a option object found by it id
	def self.find(id)
		self.all.each do |option|
			return option if option.id == id
		end
	end

	def self.find_by(rental_id)
		options = []
		self.all.each do |option|
			options.push(option) if option.rental_id == rental_id
		end
		return options
	end
	def self.type_by(rental_id)
		types = []
		self.find_by(rental_id).each { |option| types << option.type }
		return types
	end
end