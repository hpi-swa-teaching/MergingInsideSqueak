constants
unresolvedConflictColor

	styler isNil 
		ifTrue: [^Array with: TextColor blue]
		ifFalse: [^styler attributesFor: #keyword]