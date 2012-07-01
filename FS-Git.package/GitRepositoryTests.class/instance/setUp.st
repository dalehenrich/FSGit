running
setUp
	| commit1 commit2  blob1 blob2 tree1 tree2 stamp |
	super setUp.
	stamp := GitStamp new
		name: 'Homer Simpson';
		email: 'homer@nuke.com';
		yourself.
	reference := (FSFilesystem memory / 'test.git').
	repository := GitRepository on: reference.

	blob1 := GitBlob bytes: 'testBlob'.
	blob2 := GitBlob bytes: 'second test Blob'.
	tree1 := GitTree entries: {
		GitTreeEntry
			entryName: 'blob1'
			mode: GitTreeEntry fileMode
			objectSignature: blob1 signature}.
	tree2 := GitTree entries: {
		GitTreeEntry
			entryName: 'blob2'
			mode: GitTreeEntry fileMode
			objectSignature: blob2 signature}.
			
	commit1 := GitCommit 
		withTree: tree1
		message: 'message1'
		author: stamp 
		committer: stamp.
	commit2 := GitCommit
		withTree: tree2
		message: 'message2'
		author: stamp
		committer: stamp.
	commit2 parents: { commit1 }.
	
	repository
		storeObject: blob1;
		storeObject: blob2;
		storeObject: tree1;
		storeObject: tree2;
		storeObject: commit1;
		storeObject: commit2;
		updateRef: repository headsDir / 'branch1' to: commit1 signature;
		updateRef: repository headsDir / 'master' to: commit2 signature;
		updateRef: repository headFile to: commit2 signature