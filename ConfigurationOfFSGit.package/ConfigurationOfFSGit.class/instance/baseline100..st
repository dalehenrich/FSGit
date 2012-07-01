baselines
baseline100: spec
	<version: '1.0.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/GitFS'.
		spec 
			package: 'FS-Git' with: [
				spec requires: #('Filesystem' ). ];
			package: 'Filesystem'.
		spec group: 'default' with: #('FS-Git' ). ].
