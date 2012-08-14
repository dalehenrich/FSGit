visiting
visitCommit: aCommit
	self addObject: aCommit to: self commitHashes.
	self 
		visitTree: aCommit tree;
		visitCollection: aCommit parents