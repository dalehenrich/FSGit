running
setUp
	| repoRef repo commit1 commit2 tree blob |
	super setUp.
	repoRef := FSFilesystem memory / 'testRepo'.
	repo := GitRepository on: repoRef.
	blob := GitBlob bytes: 'blob1'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'first blob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature }.
	commit1 := GitCommit 
		withTree: tree
		message: 'first commit'
		author: GitStamp now
		committer: GitStamp now.
	repo
		storeObject: blob;
		storeObject: tree;
		storeObject: commit1;
		updateRef: repo headsDir / 'branch1' to: commit1 signature.
	
	blob := GitBlob bytes: 'blob2'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'second blob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature }.
	commit2 := GitCommit
		withTree: tree
		message: 'second commit'
		author: GitStamp now
		committer: GitStamp now.
	commit2 parents: { commit1 }.
	repo
		storeObject: blob;
		storeObject: tree;
		storeObject: commit2;
		updateRef: repo headsDir / 'master' to: commit2 signature.
		
	basicRepository := repo.
	repository := FSGitRepository on: repoRef