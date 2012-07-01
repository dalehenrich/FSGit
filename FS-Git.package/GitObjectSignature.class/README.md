I know how to calculate a signature for each GitStorableObject and I handle the hash representation of that signature. My equivalent in git speak is the sha1 name which is a 40 character hash (SHA1 encryption of header and contents of each object; see http://git.rsbx.net/Documents/Git_Data_Formats.txt and http://book.git-scm.com/1_the_git_object_model.html) stored as a string.

Instance Variables:
	signature	<ByteArray>
		The byte sequence representing the signature for an object that is used to calculate it sha1 hash.
	integerHash	<Integer>
		The hash calculated from the signature byte sequence in integer representation.