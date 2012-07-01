testing
isInitialized
	| isInitialized foundDirectories |
	foundDirectories := self gitDirectories collect: [:each | (self baseDir resolve: each) exists].
	isInitialized := foundDirectories size = (self gitDirectories size).
	isInitialized := self headFile exists.
	^isInitialized