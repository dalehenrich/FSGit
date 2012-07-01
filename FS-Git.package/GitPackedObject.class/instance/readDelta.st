accessing
readDelta
	^ GitDeltaInterpreter new instructions: (ZLibReadStream on: file) contents.