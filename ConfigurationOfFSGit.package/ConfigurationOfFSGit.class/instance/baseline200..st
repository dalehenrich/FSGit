baselines
baseline200: spec
	<version: '2.0.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec 
			package: 'FS-Git';
			group: 'default' with: #('FS-Git' ). ].
