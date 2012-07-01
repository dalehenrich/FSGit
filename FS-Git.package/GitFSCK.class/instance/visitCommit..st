visiting
visitCommit: aCommit
	self validate: aCommit.
	self accept: aCommit tree.
	self acceptCollection: aCommit parents.