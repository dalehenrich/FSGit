versions
version211: spec
	<version: '2.1.1' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec description: 'Adapted for new Filesystem implementation'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/3/2011 11:00'.
		spec project: #Filesystem with: '2.0.1'.
		spec package: 'FS-Git' with: 'FS-Git-MaxLeske.136' ]
