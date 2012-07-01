tests
testLoadingAssociations
	| taglikeObject |
	taglikeObject := GitTaglikeObject new.
	self assert: taglikeObject properties isEmpty.
	
	taglikeObject loadKey: 'keyname' value: 'keyobject'.
	self assert: (taglikeObject properties includesKey: 'keyname').
	self assert: (taglikeObject properties at: 'keyname') == 'keyobject'
	
	