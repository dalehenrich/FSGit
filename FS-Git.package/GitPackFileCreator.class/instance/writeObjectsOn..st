operations-writing
writeObjectsOn: aStream
	self hashes do: [ :hash || object |
		object := self repository objectNamed: hash asHexHash.
		self writeObjectHeader: object on: aStream.
		aStream nextPutAll: object compressedForPack ]