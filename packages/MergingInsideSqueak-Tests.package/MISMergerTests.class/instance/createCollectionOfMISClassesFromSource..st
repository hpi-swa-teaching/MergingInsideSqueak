mocking
createCollectionOfMISClassesFromSource: aSource

	| collectionOfMISClasses class |
	
	class := self createMISClassFromSource: aSource.
	collectionOfMISClasses := OrderedCollection new add: class.
	^collectionOfMISClasses
	
