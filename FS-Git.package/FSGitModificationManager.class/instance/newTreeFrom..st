private
newTreeFrom: aTree
	| tree |
	tree := GitTree new.
	tree entries: aTree entries.
	^ tree