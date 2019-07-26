as yet unclassified
clearPackageCache
	"Remove all mock packages created during the tests from the package cache."

	| directory |
	directory := MCCacheRepository default directory.
	(directory fileNamesMatching: self mockVersionName, '*') do: [ :each |
		directory deleteFileNamed: each ].
	(directory fileNamesMatching: self packageName, '*') do: [ :each |
		directory deleteFileNamed: each ]