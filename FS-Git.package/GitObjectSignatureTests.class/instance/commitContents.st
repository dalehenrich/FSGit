helpers
commitContents
	| stream |
	stream := WriteStream on: (ByteArray new).
	stream 
		nextPutAll: self treeTypeCode asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self treeSignature hexHash asByteArray;
		nextPut: Character lf asInteger;
		"this commit has no parents"
		nextPutAll: 'author' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self defaultStamp printString asByteArray;
		nextPut: Character lf asInteger;
		nextPutAll: 'committer' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self defaultStamp printString asByteArray;
		nextPut: Character lf asInteger;
		nextPut: Character lf asInteger;
		nextPutAll: self commitMessage asByteArray.
		
	^ stream contents