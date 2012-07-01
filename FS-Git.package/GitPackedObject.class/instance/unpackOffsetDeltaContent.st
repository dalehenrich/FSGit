accessing
unpackOffsetDeltaContent
	| baseOffset base delta |
	baseOffset := self readBaseObjectOffset.
	delta := self readDelta.
	base := pack packedObjectAtOffset: headerPos - baseOffset.
	self applyDelta: delta to: base.