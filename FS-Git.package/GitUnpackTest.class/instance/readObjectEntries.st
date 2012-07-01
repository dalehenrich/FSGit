as yet unclassified
readObjectEntries
	| objectType entryLength |
	self halt.
	objectType := self readEntryType.
	entryLength := self readEntryLength.