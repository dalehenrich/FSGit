as yet unclassified
mark: anObject
	unreachable remove: anObject ifAbsent: [].
	reachable add: anObject.