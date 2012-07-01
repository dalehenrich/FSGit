private
computeSignatureFor: aGitObject
	signature := self byteSignatureFor: aGitObject.
	integerHash := self integerHashFrom: signature