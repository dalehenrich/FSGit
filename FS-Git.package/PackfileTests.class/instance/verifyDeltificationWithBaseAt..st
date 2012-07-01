helpers
verifyDeltificationWithBaseAt: baseOffset
	| interpreter baseSize finalSize finalObjectBytes baseObjectBytes result dummyFS pack position unpackedDelta |
	"GitDeltaInterpreter GitPack and GitPackedObject already contain the necessary code."
	interpreter := GitDeltaInterpreter new.
	position := packReader position.
	unpackedDelta := (ZLibReadStream on: packReader upToEnd) contents.
	packReader position: position.
	interpreter 
		instVarNamed: 'commands' put: unpackedDelta readStream;
		instVarNamed: 'instructions' put: unpackedDelta. 

	dummyFS := FSFilesystem memory.
	(dummyFS root / 'pack.idx') writeStreamDo: [ :stream | 
		stream nextPutAll: self oldPackIndexBytes ].
	(dummyFS root / 'pack.pack') writeStreamDo: [ :stream |
		stream nextPutAll: self oldPackBytes ].
	 
	pack := GitPack new.
	pack basePath: dummyFS root / 'pack'.

	baseSize := interpreter readBaseObjectSize.
	finalSize := interpreter readFinalObjectSize.
	baseObjectBytes := (pack packedObjectAtOffset: baseOffset) unpackedBytes.
	finalObjectBytes := interpreter runAgainst: baseObjectBytes.
	
	result := baseObjectBytes size = baseSize.
	^ result & (finalObjectBytes size = finalSize)