operations-writing
writeObjects: aCollection on: aStream
	aCollection do: [ :hash || object |
		object := self repository objectNamed: hash asHexHash.
		self writeObjectHeader: object on: aStream.
		aStream nextPutAll: object compressedForPack ]