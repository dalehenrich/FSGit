saving
saveFixedKeysTo: aStream
	"Looking at builtin-commit-tree.c, the order of properties is fixed:
	tree, parents, author, committer, everything else, message."
	self saveKey: GitTree typeCode value: tree signature hexHash to: aStream.
	self parents do: [:each | self saveKey: 'parent' value: each signature hexHash to: aStream].
	self saveKey: 'author' value: author printString to: aStream.
	self saveKey: 'committer' value: committer printString to: aStream.