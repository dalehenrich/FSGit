accessing
message
	^ message ifNil: [ 
		self loadLazily. 
		message ]