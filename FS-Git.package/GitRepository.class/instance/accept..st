visiting
accept: aVisitor
	self commitsDo: [ :commit | aVisitor visit: commit ]