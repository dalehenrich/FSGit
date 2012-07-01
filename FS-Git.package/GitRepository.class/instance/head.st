public
head
"Answers the GitCommit object referenced in / via 'HEAD'."

	| signature |
	signature := self headRef.
	signature 
		ifNil: [ ^ nil ].
	^ self objectWithSignature: signature.