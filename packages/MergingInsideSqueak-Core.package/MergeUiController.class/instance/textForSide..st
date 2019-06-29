updating
textForSide: aSide
	
	| chunks accumulator |
	self currentChange ifNil: [^''].
	chunks := self currentChange change source.
	accumulator := Text new.
	chunks doWithIndex: [ :chunk :index | | chunkText |
		chunkText :=  chunk attributedTextForSide: aSide.
			(index = (self recentConflictIndexForChange: self currentChange)) ifTrue: [
					chunkText addAttribute: TextEmphasis underlined
				].
			accumulator append: chunkText.
		].
	^accumulator