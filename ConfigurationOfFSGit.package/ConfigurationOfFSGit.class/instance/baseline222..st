baselines
baseline222: spec
	<version: '2.2.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		
		spec project: 'Filesystem' with: [
			spec
				className: 'ConfigurationOfFilesystem';
				loads: 'default';
				repository: 'http://www.squeaksource.com/fs' ].
		
		spec project: 'Autotest' with: [
			spec
				className: 'ConfigurationOfAutotest';
				versionString: '1.2';
				repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		
		spec 
			package: 'FS-Git' with: [ spec requires: #('Filesystem') ];
			group: 'default' with: #('FS-Git' );
			group: 'dev' with: #('FS-Git' 'Autotest') ].
