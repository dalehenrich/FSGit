baselines
baseline226: spec
	<version: '2.2.6-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec description: 'fixing some tests which were refering to an obsolete class'.
		spec author: 'CamilloBruni'.
		spec timestamp: '2/15/2012 17:02'.
		spec repository: 'http://ss3.gemstone.com/ss/fs-git'.
		
		spec project: 'Filesystem' with: [
			spec
				className: 'ConfigurationOfFilesystem';
				versionString: #'development';
				repository: 'http://ss3.gemstone.com/ss/fs' ].
			
		spec project: 'OSProcess' with: [
			spec
				className: 'ConfigurationOfOSProcess';
				versionString: #'stable';
				repository: 'http://www.squeaksource.com/MetacelloRepository' ].
				
		spec package: 'FS-Git' with: [
				spec requires: #('Filesystem' 'OSProcess' )].
		spec 
			group: 'default' with: #('FS-Git' );
			group: 'dev' with: #('FS-Git' )].
