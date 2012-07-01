initialize-release
forType: aString  
 ^ self allSubclasses
       detect: [ :class | aString isNil not and: [ class typeCode = aString ] ]
       ifNone: [ GitInvalidObjectError signal: 
		'Could not load object. Invalid type code: ', aString printString ]