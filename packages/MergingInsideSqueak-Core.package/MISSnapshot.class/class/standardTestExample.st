constants
standardTestExample

	^self fromSources: (OrderedCollection with: (MISPatchModification initializeWithChange: (MISClass new
		package: 'standardPackage';
		className: 'TestClass';
		methods: (OrderedCollection
			with: (MISPatchModification initializeWithChange: (MISMethod new 
				methodName: 'method1';
				className: 'TestClass';
				source: (OrderedCollection
					with: (MISCleanChunk text: 'method1 ^')
					with: ((MISConflictChunk left: '1' right: '2') toggleSide: #left)
					with: ((MISConflictChunk left: '1' right: '2') toggleSide: #right))
				))
			with: (MISPatchModification initializeWithChange: (MISMethod new 
				methodName: 'method2';
				className: 'TestClass';
				source: (OrderedCollection
					with: ((MISConflictChunk left: '' right: 'method2') toggleSide: #left)
				)
			))
		)))).