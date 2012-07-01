tests
testAddedFiles
	| versionInfo root fileNameToLookup mcz|
	self fail. "MCGitRepository doesn't send #gitInitialize. Thus the repo isn't properly set up and the revision (which simply is the hash in the HEAD file) is nil"
	versionInfo := self addVersionWithSnapshot: self snapshot1 name: 'rev1'.
	root := repository repository tagNamed: versionInfo name.
	fileNameToLookup := versionInfo name, '.mcz'.
	self assert: (fileNameToLookup = 'MonticelloTest-xxx.1-rev1.mcz').
	mcz := root  / fileNameToLookup.
	self assert: mcz exists.
	self assert: mcz readStream size > 0.