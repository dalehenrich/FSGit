initialize-release
initializeWithCache: aFilessytem
	super initialize.
	cache := aFilessytem.
	cacheStore := cache store.
	modManager := FSGitModificationManager 
		initializeWith: repository
		with: cache
		for: revision.