versions
version226: spec
	<version: '2.2.6' imports: #('2.2.6-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'added basic support for git / monticello'.
		spec author: 'Camillo Bruni'.
		spec timestamp: '2/15/2012 17:03'.
		spec repository: 'http://ss3.gemstone.com/ss/fs-git'.
		spec package: 'FS-Git' with: 'FS-Git-CamilloBruni.166'. ].
