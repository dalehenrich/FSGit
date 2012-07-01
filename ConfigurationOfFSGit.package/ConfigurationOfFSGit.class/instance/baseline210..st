baselines
baseline210: spec
	<version: '2.1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec project: 'Filesystem' with: [
			spec
				className: 'ConfigurationOfFilesystem';
				loads: 'default';
				repository: 'http://www.squeaksource.com/fs' ].
		spec 
			package: 'FS-Git' with: [ spec requires: #('Filesystem') ];
			group: 'default' with: #('FS-Git' ). ].
