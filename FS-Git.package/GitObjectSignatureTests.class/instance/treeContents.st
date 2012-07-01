helpers
treeContents
	| stream |
	stream := WriteStream on: (ByteArray new).
	stream
		nextPutAll: (GitTreeEntry fileMode printStringBase: 8) asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self treeEntryName asByteArray;
		nextPut: 0;
		nextPutAll: self createBlob signature integerHash asByteArray.
		
	^ stream contents