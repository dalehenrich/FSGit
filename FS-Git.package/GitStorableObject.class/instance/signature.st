accessing
signature
	^signature ifNil: [ signature := GitObjectSignature for: self ]