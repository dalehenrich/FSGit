as yet unclassified
readEntryType
	| byte |
	byte := reader peek.
	(byte bitAnd: 2r01110000) = 	2r00010000 ifTrue: [ ^ 'commit' ].
	(byte bitAnd: 2r01110000) = 	2r00100000 ifTrue: [ ^ 'tree' ].
	(byte bitAnd: 2r0111000) = 	2r00110000 ifTrue: [ ^ 'blob' ].
	(byte bitAnd: 2r0111000) = 	2r01000000 ifTrue: [ ^ 'blob' ].
	(byte bitAnd: 2r01110000) = 	2r01100000 ifTrue: [ ^ 'ofsDelta' ].
	(byte bitAnd: 2r01110000) = 	2r01110000 ifTrue: [ ^ 'refDelta' ].
	
	Error signal: 'couldn''t match object entry type.'