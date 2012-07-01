tests
testObjectWithSignature
	| initialBlob loadedBlob |
	initialBlob := GitBlob bytes: 'test'.
	repository storeObject: initialBlob.
	loadedBlob := repository objectWithSignature: initialBlob signature.
	self assert: initialBlob = loadedBlob.
	"blob is unreferenced, hence we create a new empty repos"
	repository baseDir delete.