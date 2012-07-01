private
collectTagsFromLooseRefs
	| tags |
	tags := Dictionary new.
	
	self tagsDir children do: [ :ref |
		ref readStreamDo: [ :stream |
			tags 
				at: ref basename
				put: (self objectNamed: stream contents asString) ] ].
		
	^ tags