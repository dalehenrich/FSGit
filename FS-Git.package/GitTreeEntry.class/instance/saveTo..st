saving
saveTo: aStream.
	aStream 
		nextPutAll: self printMode;
		space;
		nextPutAll: entryName;
		nullByte.
	objectSignature saveTo: aStream.