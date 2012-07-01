public-accessing
object
	^ GitStorableObject 
		fromPackedStream: self unpackedBytes readStream
		type: self byteTypeCode
		in: self repository