public
delete
	"Deletes the repository irrevocably."
	
	GitRepositoryDeleteRequest signal
		ifTrue: [ self baseDir delete ]