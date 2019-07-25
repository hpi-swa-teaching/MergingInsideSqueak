as yet unclassified
clearPackageCache
	"Remove all mock packages created during the tests from the package cache."

	| directory |
	super clearPackageCache.
	directory := MCCacheRepository default directory.
	(directory fileNamesMatching: self packageName, '*') do: [ :each |
		directory deleteFileNamed: each ]