helpers
createCommit
		^ GitCommit 
			withTree: self createTree
			message: self commitMessage
			author: self defaultStamp
			committer: self defaultStamp.