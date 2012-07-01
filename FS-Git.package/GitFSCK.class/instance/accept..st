visiting
accept: anObject
	(reachable includes: anObject) ifTrue: [ ^ self].
	self mark: anObject.
	^ anObject accept: self.