versions
version222: spec
	<version: '2.2.2' imports: #('2.2.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'release'.
		spec description: 'fixes to FSGit; development on Monticello support
Exception hierarchy and several fixes
* implemented support for packed tags
* added test for packed tags
* some refactoring / renaming
* fix: #isHeadless is not understood by Pharo < 1.3
* a bit of cleaning up'.
		spec author: 'MaxLeske'.
		spec timestamp: '8/12/2011 10:09'.
		spec repository: 'http://www.squeaksource.com/FSGit'.
		spec project: 'Filesystem' with: '2.0.1'.
		spec package: 'FS-Git' with: 'FS-Git-MaxLeske.146'. ].
