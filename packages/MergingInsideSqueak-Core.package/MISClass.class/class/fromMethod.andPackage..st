as yet unclassified
fromMethod: aMISMethod andPackage: aPackageName
	
	| misClassDefinition |
	misClassDefinition := self new 
		className: aMISMethod className;
		package: aPackageName;
		methods: (OrderedCollection with: aMISMethod)
		yourself.
	aMISMethod actualClass: misClassDefinition.	
	misClassDefinition actualClass: misClassDefinition.
	^misClassDefinition