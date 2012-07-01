helpers
calculateChecksum
	| position packData signature |
	position := packReader position.
	self assert: (packReader skip: 20; atEnd).
	
	packReader position: 0.
	packData := packReader next: position.
	packReader position: position.
	
	"GitObjectSignature already has all the code for dealing with this. No point in copying it here."
	signature := GitObjectSignature new.
	
	^ signature hexHashFrom: (signature integerHashFrom:  packData)