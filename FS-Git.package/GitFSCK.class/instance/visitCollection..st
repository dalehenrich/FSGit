visiting
visitCollection: aCollection
	aCollection do: [ :anObject | self visit: anObject ]