tests
testReadingPackedTag
	| loadedObject |
	self useTagPack.
	
	self 
		shouldnt: [ loadedObject := repository repository objectNamed: 
			'3ec4730d40a77258b87702a516f351a19e57bd14' ]
		raise: Error.
	self assert: GitTag equals: loadedObject species.
	
	self assert: 1 equals: repository repository tags size