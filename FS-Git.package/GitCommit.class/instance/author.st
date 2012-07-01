accessing
author
	^ author ifNil: [ 
		self loadLazily. 
		author ]