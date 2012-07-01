accessing
crcAt: index
	"1024 fanout, 8 header, minus 4 for smalltalk's 1-based indexing"
	idx position: 1028 + (objectCount * 20) + (index * 4).
	^ (idx next: 4) asInteger.