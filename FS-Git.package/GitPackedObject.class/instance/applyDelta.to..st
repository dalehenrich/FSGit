accessing
applyDelta: delta to: base
	decodeClass := base decodeClass.
	unpackedBytes := delta runAgainst: base unpackedBytes.