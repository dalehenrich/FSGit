tests
testIncludesName
	self fail. "MCGitRepository doesn't send #gitInitialize. Thus the repo isn't properly set up and the revision (which simply is the hash in the HEAD file) is nil"