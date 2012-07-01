accessing
committer
	^ committer ifNil: [ 
		self loadLazily. 
		committer ]