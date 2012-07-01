private
collectTagsFromPackedRefs
	| tags packedRefs |
	tags := Dictionary new.
	
	packedRefs := self packedRefs. 
	packedRefs ifNotNil: [
		packedRefs keysAndValuesDo: [ :refName :refSignature | 
			(refName includesSubString: 'tags') ifTrue: [
				tags
					at: refName
					put: (self objectWithSignature: refSignature) ] ] ].
	
	^ tags