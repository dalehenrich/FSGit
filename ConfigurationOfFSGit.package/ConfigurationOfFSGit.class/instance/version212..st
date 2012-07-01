versions
version212: spec
	<version: '2.1.2' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec description: 'Fixed last failing tests'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/4/2011 17:48'.
		spec project: #Filesystem with: '2.0.1'.
		spec package: 'FS-Git' with: 'FS-Git-CamilloBruni.137' ]
