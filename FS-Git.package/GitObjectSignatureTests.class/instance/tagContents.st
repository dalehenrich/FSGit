helpers
tagContents
	| stream |
	stream := WriteStream on: (ByteArray new).
	stream
		nextPutAll: 'object' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self commitSignature hexHash asByteArray;
		nextPut: Character lf asInteger;
		nextPutAll: 'type' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: GitCommit typeCode asByteArray;
		nextPut: Character lf asInteger;
		nextPutAll: 'tag' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self tagName asByteArray;
		nextPut: Character lf asInteger;
		nextPutAll: 'tagger' asByteArray;
		nextPut: Character space asInteger;
		nextPutAll: self defaultStamp printString asByteArray;
		nextPut: Character lf asInteger;
		nextPut: Character lf asInteger;
		nextPutAll: self tagMessage asByteArray.
		
	^ stream contents