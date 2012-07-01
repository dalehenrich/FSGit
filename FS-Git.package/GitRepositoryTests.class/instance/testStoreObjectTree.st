tests
testStoreObjectTree
	| tree storedObject |
	tree := GitTree new.
	storedObject := repository storeObject: tree.
	self assert: storedObject = tree.
	"tree is unreferenced, hence we create a new empty repos"
	repository baseDir delete.