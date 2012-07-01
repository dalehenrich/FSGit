accessing
objectAt: sha1String
	| packedObject |
	packedObject := self packedObjectAt: sha1String.
	^ packedObject 
		ifNotNil: [ packedObject object ]
		ifNil: [ nil ]