operations
updateParentSignaturesOfChanged: target at: aPath 
	"recursively update the refs of the target and subsequently remove empty directories"
	|parent|
	self flag: 'TODO: update refs only once after processing all deletes and creates'.
	aPath isRoot ifTrue: [ ^ self ].
	parent := self treeAt: aPath parent.
	target isEmpty 
		ifTrue: [
			parent removeEntryAt: aPath basename.]
		ifFalse: [
			parent putEntry: 
				(GitTreeEntry
					entryName: aPath basename
					mode: GitTreeEntry dirMode
					objectSignature: (GitObjectSignature for: target))].
	self updateParentSignaturesOfChanged: parent at: aPath parent. 