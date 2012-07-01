helpers
createFixedTimeStampCommitIn: anFSReference
	| repository blob tree commit committer author |
	repository := GitRepository on: anFSReference.
	
	blob := GitBlob bytes: 'blob1'.
	tree := GitTree entries: {
		GitTreeEntry
			entryName: 'first blob'
			mode: GitTreeEntry fileMode
			objectSignature: blob signature }.
		
	committer := (GitStamp new
		email: 'mail@server.ext';
		name: 'Homer Simpson';
		timeStamp: (DateAndTime year: 2011 month: 06 day: 28 hour: 22 minute: 10) asTimeStamp;
		yourself).
	author := (GitStamp new
		email: 'mail@server.ext';
		name: 'Homer Simpson';
		timeStamp: (DateAndTime year: 2010 month: 06 day: 27 hour: 21 minute: 11) asTimeStamp;
		yourself). 
					
	commit := GitCommit
		withTree: tree
		message: 'aMessage'
		author: author
		committer: committer.
	commit parents: OrderedCollection new.
		
	repository
		storeObject: blob;
		storeObject: tree;
		storeObject: commit.
	repository updateRef: repository headFile to: commit signature