tests
testStoreObjectBlob
	| blob storedObject signature hash |
	blob := GitBlob bytes: 'test'.
	signature := blob signature.
	hash := SecureHashAlgorithm new hashMessage: signature bytes.
	hash := hash hex asLowercase forceTo: 40 paddingStartWith: $0.
	storedObject := repository storeObject: blob.
	self assert: storedObject = blob.
	"blob is unreferenced, hence we create a new empty repos"
	repository baseDir delete.