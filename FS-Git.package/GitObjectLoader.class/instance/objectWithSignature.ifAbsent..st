accessing
objectWithSignature: aGitObjectSignature ifAbsent: aBlock
	^ [ self objectFrom: (repository looseObjectStreamAt: aGitObjectSignature) ] 
		on: FSFileDoesNotExist
		do: [ :ex | ^ (repository packedObjectWithSignature: aGitObjectSignature ifAbsent: [^ aBlock value]) object ]