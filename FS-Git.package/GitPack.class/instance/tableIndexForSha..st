accessing
tableIndexForSha: sha1
	| fanoutIndex sha1Integer index low high test |
	sha1Integer := Integer readFrom: sha1 asUppercase readStream base: 16.
	fanoutIndex := sha1Integer >> 152. "160 bit hash. We want the upper 8 bits."

	"We are searching using a zero-based index, since position: on the file is zero-based."
	low := (fanoutIndex > 0) 
		ifTrue: [ self fanoutTableAt: fanoutIndex - 1 ] 
		ifFalse: [ 0 ].
	high := (self fanoutTableAt: fanoutIndex) - 1. "binary-search wants an inclusive range"

	[ index := high + low // 2. low > high] whileFalse: [
		idx position: index * 20 + 1032. "256 * 4 for the fanoutTable, plus 8 for the header"
		test := Integer readFrom: (idx next: 20) hex base: 16.
		test = sha1Integer 
			ifTrue: [ ^ index ]
			ifFalse: [ sha1Integer > test
				ifTrue: [ low := index + 1 ]
				ifFalse: [ high := index - 1 ] ] ].
	^ nil