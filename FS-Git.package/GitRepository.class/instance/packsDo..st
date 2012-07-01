enumerating
packsDo: aBlock
	| dir |
	packs ifNil: [
		packs := OrderedCollection new.
		dir := self baseDir resolve: 'objects/pack'.
		dir files 
			reject: [ :file | file basename endsWith: '.idx' ]
			thenDo: [ :packfile | packs add: (GitPackFile on: packfile in: self) ] ].
		
	packs do: [ :pack | aBlock value: pack ]