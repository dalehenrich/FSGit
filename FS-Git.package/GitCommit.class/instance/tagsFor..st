accessing
tagsFor: aGitRepos
	^ aGitRepos tags select: [ :tag| tag object = self]