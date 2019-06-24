constants
discardedColor

	styler isNil 
		ifTrue: [^Array with: TextColor red]
		ifFalse: [^styler attributesFor: #invalid]