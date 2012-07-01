tests
testInitializeWithEverything
	| commit tree message author committer blob |
	blob := GitBlob bytes: 'aBlob'.
	message := 'a test message'.
	author := (GitStamp new
				email: 'mail@server.ext';
				name: 'Homer Simpson';
				timeStamp: TimeStamp now;
				yourself).
	committer := (GitStamp new
					email: 'homer@simpson.spr';
					name: 'Bart Simpson';
					timeStamp: TimeStamp now;
					yourself).
	tree := GitTree entries: {GitTreeEntry 
								entryName: 'filename'
								mode: GitTreeEntry fileMode
								objectSignature: blob signature}.
	
	commit := GitCommit 
				withTree: tree
				message: message
				author: author
				committer: committer.
	
	self assert: commit tree = tree.
	self assert: commit message = message.
	self assert: commit author = author.
	self assert: commit committer = committer