private
byteData
	| stream |
	stream := GitStream new.
	self saveTo: stream.
	^stream contents