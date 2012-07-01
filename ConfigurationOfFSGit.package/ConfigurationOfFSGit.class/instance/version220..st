versions
version220: spec
	<version: '2.2.0' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec description: 'Fixed GitFSCK. All tests green.'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/8/2011 19:56'.
		spec project: #Filesystem with: '2.0.1'.
		spec package: 'FS-Git' with: 'FS-Git-CamilloBruni.139' ]
