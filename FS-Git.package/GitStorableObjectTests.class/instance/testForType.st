class-tests
testForType
	GitStorableObject allSubclasses do: [ :each | each typeCode isNil 
		ifFalse: [ self assert: (GitStorableObject forType: each typeCode) = each ]
		ifTrue: [ self should: [ GitStorableObject forType: each typeCode ] raise: GitInvalidObjectError ] ]