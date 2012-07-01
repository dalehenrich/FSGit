accessing
packedObjectAtOffset: offset 
	| packStream packedObject |
	packData ifNil: [ 
		packData := (basePath , 'pack') readStreamDo: [ :stream | stream contents ] ].
	
	packStream := packData readStream.
	packStream position: offset.
	packedObject := GitPackedObject new pack: self.
	packedObject loadFrom: packStream.
		
	^ packedObject