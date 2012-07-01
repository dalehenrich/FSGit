initialize-release
createFilesystem
	^ (FSGitRepository on: (FSFilesystem memory / 'testRepo.git')) head.