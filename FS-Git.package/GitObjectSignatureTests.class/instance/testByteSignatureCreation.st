tests
testByteSignatureCreation
	"reference commit created with GitX 0.7.1 on git 1.7.0"
	| fileRef stream testCommit tree blob |	
	fileRef := FSFilesystem memory /self referenceFileName.
	fileRef writeStreamDo: [:writer | writer nextPutAll: self referenceContent].
	stream := fileRef readStream.
	self assert:  stream contents size = self referenceBlobSize.	
	blob := GitBlob bytes: stream contents.
	
	tree := GitTree entries: {GitTreeEntry
								entryName: self referenceFileName
								mode: GitTreeEntry fileMode
								objectSignature: blob signature}.
	testCommit := GitCommit 
					withTree: tree
					message: self referenceMessage
					author: self referenceAuthor
					committer: self referenceAuthor.
	
	self assert: blob signature hexHash = self referenceBlobHash.
	self assert: GitTreeEntry fileMode  = self referenceTreeEntryMode.
	self assert: tree size = self referenceTreeSize.
	self assert: tree signature hexHash = self referenceTreeHash.
	self assert: testCommit signature hexHash = self referenceCommitHash.