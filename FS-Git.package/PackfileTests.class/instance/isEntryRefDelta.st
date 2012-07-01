helpers
isEntryRefDelta
	^ self hasRefDeltaSignature and: [
		self verifyOldFormatDeltification ]