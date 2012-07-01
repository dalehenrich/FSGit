accessing
fanoutTableAt: fanoutIndex
	^ fanoutTable unsignedLongAt: (fanoutIndex * 4) + 1 bigEndian: true.