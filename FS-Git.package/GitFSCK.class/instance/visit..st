visiting
visit: anObject
	"avoid extending Collection"
	anObject isCollection ifTrue: [ ^ self visitCollection: anObject ].
	
	(reachable includes: anObject) ifTrue: [ ^ self].
	self mark: anObject.
	anObject accept: self