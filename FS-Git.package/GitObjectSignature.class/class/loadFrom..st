initialize-release
loadFrom: aStream
	| hash |
	hash := (aStream next: 20).
	^self from: hash hex