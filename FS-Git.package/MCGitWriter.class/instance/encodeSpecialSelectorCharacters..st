serializing
encodeSpecialSelectorCharacters: aSelector
	^ String streamContents: [ :s| 
		aSelector do: [ :char|
			(EscapeCharacters includesKey: char)
				ifTrue: [ s nextPutAll: (EscapeCharacters at: char) ]
				ifFalse:[ s nextPut: char ]]]