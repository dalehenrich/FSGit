as yet unclassified
readEntryLength
"see comment in PackfileTests>>getSizeFromHeaders:"
	| size shift byte |
	byte := reader next.
	size := byte bitAnd: 2r00001111.
	shift := 4.
	[ (byte bitAnd: 2r10000000) isZero ] whileFalse: [
		byte := reader next.
		size := size bitOr: ((byte bitAnd: 2r01111111) bitShift: shift).
		shift := shift + 7 ].
	
	^ size