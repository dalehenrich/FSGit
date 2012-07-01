versions
version221: spec
	<version: '2.2.1' imports: #('2.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'updates for Monticello support'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/9/2011 18:09'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec project: #Filesystem with: '2.0.1'.
		spec package: 'FS-Git' with: 'FS-Git-CamilloBruni.140'. ].
