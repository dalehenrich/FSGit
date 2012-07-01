baselines
baseline225: spec
	<version: '2.2.5-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'fixing some tests which were refering to an obsolete class'.
		spec author: 'CamilloBruni'.
		spec timestamp: '2012-02-01 23:56'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec 
			project: 'Filesystem' with: [
				spec
					className: 'ConfigurationOfFilesystem';
					versionString: #'development';
					repository: 'http://www.squeaksource.com/fs' ];
			project: 'OSProcess' with: [
				spec
					className: 'ConfigurationOfOSProcess';
					versionString: #'stable';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec package: 'FS-Git' with: [
				spec requires: #('Filesystem' 'OSProcess' ). ].
		spec 
			group: 'default' with: #('FS-Git' );
			group: 'dev' with: #('FS-Git' ). ].
