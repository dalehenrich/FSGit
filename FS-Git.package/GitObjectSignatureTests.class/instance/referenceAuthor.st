helpers
referenceAuthor
	^ GitStamp new
		name: self authorName;
		email: self authorEmail;
		timeStamp: self authorTimeStamp;
		yourself