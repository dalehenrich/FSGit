as yet unclassified
unpack: aReference
	reader := ReadStream on: aReference readStream contents.
	self
		readPackSignature;
		readPackVersion;
		readObjectCount;
		readObjectEntries