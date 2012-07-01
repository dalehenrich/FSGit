tests
testLessThanOrEqual
	| entry1 entry2 entry3 entry4 entry5 |
	entry1 := GitTreeEntry 
		entryName: 'Connencton.doc'
		mode: nil
		objectSignature: nil.
	entry2 := GitTreeEntry 
		entryName: 'GitFS note.txt'
		mode: nil
		objectSignature: nil.
	entry3 := GitTreeEntry
		entryName: 'dummy.docx'
		mode: nil
		objectSignature: nil.
	entry4 := GitTreeEntry
		entryName: 'aFolder'
		mode: GitTreeEntry dirMode
		objectSignature: nil.
	entry5 := GitTreeEntry
		entryName: 'aFolder'
		mode: GitTreeEntry fileMode
		objectSignature: nil.
	
	self assert: entry1 <= entry2.
	self assert: entry1 <= entry3.
	self assert: entry2 <= entry3. "asciiValue of $G is smaller than that of $d"
	self assert: entry5 <= entry4 "entries for tree objects are compared with a trailing slash"