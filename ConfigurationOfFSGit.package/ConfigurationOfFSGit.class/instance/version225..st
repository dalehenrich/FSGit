versions
version225: spec
	<version: '2.2.5' imports: #('2.2.5-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'added basic support for git / monticello'.
		spec author: 'Camillo Bruni'.
		spec timestamp: '8/25/2011 19:44'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec project: 'Filesystem' with: '2.0.3'.
		spec package: 'FS-Git' with: 'FS-Git-CamilloBruni.166'. ].
