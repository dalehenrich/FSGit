comparing
hash
	^ self species hash bitXor: (self mode bitXor: entryName hash)