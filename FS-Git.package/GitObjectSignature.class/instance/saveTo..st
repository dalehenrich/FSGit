saving
saveTo: aStream
	aStream nextPutBytes: (self integerHash asByteArray forceTo: 20 paddingStartWith: 0)