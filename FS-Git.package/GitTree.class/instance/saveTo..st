saving
saveTo: aStream
	entries values sorted do: [:e | e saveTo: aStream].