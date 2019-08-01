accessing
classInstanceVarNames

	^classInstanceVarNames ifNil: [classInstanceVarNames := OrderedCollection new]