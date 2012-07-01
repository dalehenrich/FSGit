saving
saveTo: aStream
	self validate.
	self saveFixedKeysTo: aStream.
	properties ifNotNil: [properties keysAndValuesDo:[:key :value |
			self saveKey: key value: value to: aStream]].
	aStream lf.
	aStream nextPutAll: message.