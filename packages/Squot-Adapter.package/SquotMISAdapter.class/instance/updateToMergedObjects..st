update
updateToMergedObjects: aMergedSnapshot
	| artifacts aPackageInfo |
	
	artifacts := self workingCopy baseVersion artifacts.
	aMergedSnapshot sources do: [:mergedClass | | operations |
		operations := OrderedCollection new.  
		aPackageInfo := self workingCopy store objectAt: mergedClass package.
		mergedClass methods do: [:mergedMethod | 
			((self sources: baseSources containsMethod: mergedMethod) and: [self sources: targetSources containsMethod: mergedMethod]) ifTrue: [
				 operations add: (self createMethodModificationOf: mergedMethod)		
			] ifFalse: [
				operations add: (self createMethodAdditionOf: mergedMethod)				
			].	
		].
		(MCPatch operations: operations) squotApplyToLoaded: aPackageInfo
	].
	baseSources sources do: [:baseClass | | operations |
		operations := OrderedCollection new.  
		aPackageInfo := self workingCopy store objectAt: baseClass package.
		baseClass methods select: [:baseMethod |
			(self sources: aMergedSnapshot containsMethod: baseMethod) not
		] thenDo: [:baseMethod |
			operations add: (self createMethodRemovalOf: baseMethod)	
		].
		(MCPatch operations: operations) squotApplyToLoaded: aPackageInfo
	]
	