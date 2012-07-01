versions
version100: spec
	<version: '1.0.0' imports: #('1.0.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'initial version'.
		spec author: 'MaxLeske'.
		spec timestamp: '3/21/2011 19:30'.
		spec 
			package: 'FS-Git' with: 'FS-Git-MaxLeske.99';
			package: 'Filesystem' with: 'Filesystem-MaxLeske.91'. ].
