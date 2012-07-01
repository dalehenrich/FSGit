class-tests
testFor
	| repository loader |
	repository := GitRepository on: FSFilesystem memory root.
	loader := GitObjectLoader for: repository.
	self assert: (loader instVarNamed: 'repository')= repository