accessing
size
	| stream |
	stream := GitStream new.
	self saveTo: stream.
	^stream size