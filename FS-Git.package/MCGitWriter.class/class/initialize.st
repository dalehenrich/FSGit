initialize-release
initialize 
	super initialize.
	EscapeCharacters := SmallDictionary new.
	EscapeCharacters 
		at: $: put: ' ';
		at: $/ put: '&#47;';
		at: $\ put: '&#92;'.