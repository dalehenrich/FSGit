accessing
offsetAt: index
	| o |
	"1024 fanout, 8 header. We're still using zero-based indexing here."
	idx position: 1032 + (objectCount * 24) + (index * 4).
	o := Integer readFrom: (idx next: 4) hex base: 16.
	(o >= 16r80000000)
		ifFalse: [^ o]
		ifTrue: [
			"the table offset is zero-based here because it comes from git, not smalltalk"
			idx position: 1032 + (objectCount * 28) + ((o bitAnd: 16r7FFFFFFF) * 8).
			^ (idx next: 8) asInteger]