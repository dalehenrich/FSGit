private
entryAt: aName ifAbsent: aBlock
	^ entries 
		at: aName
		ifAbsent: aBlock