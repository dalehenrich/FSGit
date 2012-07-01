enumerating
packsDo: aBlock
	| dir shortName |
	packs ifNil: [
		packs := OrderedCollection new.
		dir := self baseDir resolve: 'objects/pack'.
		dir files 
			do: [ :each | (each basename endsWith: '.idx')
				ifTrue: [ shortName := each basename allButLast: 4.
					packs add: (GitPack new basePath: (dir resolve: shortName)) ] ] ].
		
	packs do: [ :each | aBlock value: each ]