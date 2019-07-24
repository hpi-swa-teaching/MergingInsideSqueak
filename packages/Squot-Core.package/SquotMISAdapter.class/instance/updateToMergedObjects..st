update
updateToMergedObjects: aMergedSnapshot
	| artifacts aPackageInfo |
	
	artifacts := self workingCopy baseVersion artifacts.
	aMergedSnapshot sources do: [:mergedClass | | operations |
		operations := OrderedCollection new.  
		aPackageInfo := self workingCopy store objectAt: mergedClass package.
		artifacts at: mergedClass package ifPresent: [:artifact |
			mergedClass methods do: [:mergedMethod | 
				(self sources: baseSources containsMethod: mergedMethod) ifTrue: [
					(self sources: targetSources containsMethod: mergedMethod) ifTrue: [
						operations add: (self putMISMethod: mergedMethod To: artifact)						
					] ifFalse: [
					
					]	
				] ifFalse: [
				
				].
			]	
		] ifAbsent: [].
		(MCPatch operations: operations) squotApplyToLoaded: aPackageInfo
	]