operations
storeTrees
	storedObjects := Set new.
	self storeCreatedTrees.
	self storeDeletedTrees.
	repository storeObject: self rootTree