operations-writing-index
writeOffsetTablesOn: aStream
	| index |
	index := 0.
	self sortedHashes do: [ :integer || offset |
		offset := self hashDict at: integer.
		aStream nextPutAll: 
			(offset size = 8 
				ifTrue: [ 
					"if MSB = 1 then the entry is an index into the 8-byte table"
					(index bitOr: 4294967296) asByteArray.
					index := index + 8 ]
				ifFalse: [ offset ]) ]