accessing
loadFrom: aStream
	| byte type shift |
	file := aStream.
	headerPos := file position.
	type := self readObjectType.
	file back. "the same byte contains both type and size information"
	length := self readUnpackedDataSize.
	self unpackContentType: type.