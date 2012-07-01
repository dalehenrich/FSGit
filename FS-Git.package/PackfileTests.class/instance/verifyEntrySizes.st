helpers
verifyEntrySizes
	[ self tryNewDeltaFormatForSizes ]
		on: TestFailure
		do: [ self tryOldDeltaFormatForSizes ]