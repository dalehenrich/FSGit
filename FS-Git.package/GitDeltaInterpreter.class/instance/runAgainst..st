executing
runAgainst: aByteArray
	source := aByteArray.
	commands := ReadStream on: instructions.
	source size = self readBaseObjectSize ifFalse: [ 
		self invalidPackfile: 'Actual size of delta base object is not the same as announced by packfile.' ].
	output := WriteStream on: (ByteArray new: self readFinalObjectSize).
	self run.

	^ output contents