helpers
verifyEntryOffsets
	[ self tryNewDeltaFormatForOffsets ]
		on: TestFailure
		do: [ self tryOldDeltaFormatForOffsets ]