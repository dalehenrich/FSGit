public-unpacking
unpack
	self packedObjectsDo: [ :packedObject |
		packedObject object store ]