merging
createNewMISClassFrom: aMISMethod AndPackage: aPackageName
	| misClassDefinition |

	misClassDefinition := MISClass new 
		className: aMISMethod className;
		package: aPackageName;
		methods: (OrderedCollection with: aMISMethod)
		yourself.
	aMISMethod actualClass: misClassDefinition.	
	misClassDefinition actualClass: misClassDefinition.
	^misClassDefinition