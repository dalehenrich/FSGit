serializing
serializeMethodDefinition: aMethodDefinition 
	^ String streamContents: [ :s |
		(MCStWriter on: s)
			prepareWrite;
			visitMethodDefinition: aMethodDefinition]