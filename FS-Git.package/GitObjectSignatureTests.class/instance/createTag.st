helpers
createTag
	^ GitTag new
		name: self tagName;
		message: self tagMessage;
		tagger: self defaultStamp;
		object: self createCommit;
		yourself