public-operations
repackWithoutDelification
	self 
		visitRepository: self packFile repository;
		writePackFile;
		writeFinalPackFileName
	