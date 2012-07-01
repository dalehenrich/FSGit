tests
testRetrievingParents
	| commit collection parent1 parent2 parent3 |
	parent1 := GitCommit new.
	parent2 := GitCommit new.
	parent3 := GitCommit new.
	collection := OrderedCollection new.
	collection add: parent1; add: parent2; add: parent3.
	commit := GitCommit new.
	commit parents: collection.
	
	self assert: commit parents size = 3.
	self assert: commit parents first == parent1.
	self assert: commit parents second == parent2.
	self assert: commit parents third == parent3