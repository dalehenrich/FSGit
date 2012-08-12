accessing
numberOfObjects
	^ self commitHashes size +
		self treeHashes size +
		self blobHashes size