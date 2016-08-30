# design and build a nested data structure to represent a real-world construct
#
#
# car construct

car = {
	engine_compartment: {
		engine: [
			'fuel_pump',
			'coolant_pump',
			'oil_pump'
		]
	},
	passenger_compartment: {
		driver_seat: [
			'stearing_wheel',
			'dash_board',
			'gages',
			'break_peddle',
			'gas_peddle'
		],
		passenger_seat: [
			'glove_box',
			'dash_board',
			'radio'
		],
		back_seat: [
			'seat_belts',
			'window_adjust'
		]
	},
	storage_compartment: {}
}



#Once you've built it, print a few individual pieces of deeply nested data from the structure,
#showing that you know how to use multiple indexes or hash keys (or both) to access nested items.
#Try to demonstrate a few different types of access.

puts car[:passenger_compartment][:driver_seat][0]		#will print stearing_wheel
puts car[:passenger_compartment][:passenger_seat][1]	#will print dash_board
car[:engine_compartment][:engine].each {|x| puts x}		#will print the parts of engine array