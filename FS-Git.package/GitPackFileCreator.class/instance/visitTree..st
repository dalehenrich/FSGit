visiting
visitTree: aTree
	self addObject: aTree to: self treeHashes.
	self visitCollection: aTree objects