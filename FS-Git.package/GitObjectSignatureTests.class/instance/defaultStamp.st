helpers
defaultStamp
	| fixedTime |
	fixedTime := DateAndTime 
		year: 2010
		month: 7 
		day: 22
		hour: 19
		minute: 34
		second: 23
		offset: (Duration hours: 5).
		
	^ [ [ (GitStamp now) timeStamp: fixedTime ]
		on: GitStampNameRequest
		do: [ :req | req resume: 'Homer Simpson' ] ]
			on: GitStampEmailRequest
			do: [ :req | req resume: 'homer@nuke.com' ]