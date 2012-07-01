private
looseObjectStreamAt: aGitObjectSignature
	^ self 
		looseObjectStreamAt: aGitObjectSignature 
		ifAbsent: [ FSFileDoesNotExist signalWith: 
			(self baseDir resolve: (self looseObjectPathFor: aGitObjectSignature)) ]