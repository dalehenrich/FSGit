enumerating
looseObjectNamesDo: aBlock 
	| root hash |
	root := self baseDir resolve: 'objects'.
	root exists ifFalse: [ ^ self ].
	root directories do: [ :dirReference | 
		(self isObjectDirectory: dirReference)
			ifTrue: [ dirReference files do: [ :fileReference | 
				hash := dirReference basename , fileReference basename.
				aBlock value: (GitObjectSignature from: hash) ] ] ]