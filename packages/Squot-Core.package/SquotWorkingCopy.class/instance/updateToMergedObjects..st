loading and unloading
updateToMergedObjects: aMergedSnapshot
	| artifacts aPackageInfo |
	
	artifacts := self baseVersion artifacts.
	aMergedSnapshot sources do: [:mergedClass | | operations |
		operations := OrderedCollection new.  
		aPackageInfo := self store objectAt: mergedClass package.
		artifacts at: mergedClass package ifPresent: [:artifact |
			mergedClass methods do: [:mergedMethod | 
				operations add: (self putMISMethod: mergedMethod To: artifact)
			]	
		] ifAbsent: [].
		(MCPatch operations: operations) squotApplyToLoaded: aPackageInfo
	]