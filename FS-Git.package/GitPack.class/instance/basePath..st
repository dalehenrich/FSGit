accessing
basePath: aReference
	basePath := aReference.
	(basePath , 'idx') readStreamDo: [ :stream | idx := stream contents readStream ].
	((idx next: 8) = #[255 116 79 99 0 0 0 2])
		ifFalse: [ self InvalidPackfile: 'Bad pack index header.' ].
	fanoutTable := idx next: 1024. "256 4-byte big-endian entries."
	objectCount := self fanoutTableAt: 255.