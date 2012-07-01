versions
version120: spec
	<version: '1.2.0' imports: #('1.0.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec description: 'fixes for Pharo 1.2 (Cog)'.
		spec author: 'MaxLeske'.
		spec timestamp: '7/16/2011 09:30'.
		spec 
			package: 'FS-Git' with: 'FS-Git-MaxLeske.122';
			package: 'Filesystem' with: 'Filesystem-CamilloBruni.98'. ].
