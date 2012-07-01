accessing
objectFrom: aStream
	repository ifNil: [ ^ self error: 'Instance variable #repository needs to be initialized.' ].
	^ GitStorableObject loadFrom: aStream from: repository