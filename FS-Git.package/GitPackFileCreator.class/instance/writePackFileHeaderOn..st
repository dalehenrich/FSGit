operations-writing
writePackFileHeaderOn: aStream
	aStream
		nextPutAll: self packFileIdentifier;
		nextPutAll: self packFileVersion;
		nextPutAll: (self numberOfObjects asByteArrayOfSize: 4)