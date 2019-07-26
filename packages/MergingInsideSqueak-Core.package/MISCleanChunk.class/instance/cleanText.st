as yet unclassified
cleanText
	|text|
	
	text := String new.
	self text do: [:char | 
		text := text, char
	].
	^text