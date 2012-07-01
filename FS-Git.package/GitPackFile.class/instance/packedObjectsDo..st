enumerating
packedObjectsDo: aBlock
	| position |
	position := 12.
	objectCount timesRepeat: [ | object |
		object := GitPackedObject
			fromPack: self
			at: position
			in: repository.
		position := position + object packedLength.
		aBlock value: object ]