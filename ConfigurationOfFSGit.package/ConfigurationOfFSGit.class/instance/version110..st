versions
version110: spec
	<version: '1.1.0' imports: #('1.0.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec description: 'fixes for Pharo 1.2 (Cog)'.
		spec author: 'MaxLeske'.
		spec timestamp: '5/25/2011 19:30'.
		spec 
			package: 'FS-Git' with: 'FS-Git-MaxLeske.103';
			package: 'Filesystem' with: 'Filesystem-MaxLeske.92'. ].
