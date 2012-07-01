helpers
isEntryOfsDelta
	^ self hasOfsDeltaSignature and: [
		self verifyNewFormatDeltification ]