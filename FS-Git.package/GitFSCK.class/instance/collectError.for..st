validation
collectError: error for: anObject
	errors at: anObject ifAbsentPut: OrderedCollection new.
	(errors at: anObject) add: (
		(error respondsTo: #copyUpTo:)
			ifTrue: [ error copyUpTo: referenceContext ]	
			ifFalse: [ error ])