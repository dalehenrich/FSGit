versions
version223: spec
	<version: '2.2.3' imports: #('2.2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '* added first simple help pages
* added FSFilesystem class>>onGit: for compliance
* updated help'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/15/2011 11:20'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec project: 'Filesystem' with: '2.0.2'.
		spec package: 'FS-Git' with: 'FS-Git-MaxLeske.149'. ].
