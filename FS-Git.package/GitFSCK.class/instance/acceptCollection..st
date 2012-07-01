visiting
acceptCollection: aCollection 
	aCollection do: [ :each|
		self accept: each ].