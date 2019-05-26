accessing
setNextMethodConflict
	
	chunks doWithIndex: [:chunk :index | (currentConflict < index and: chunk isConflict) ifTrue: [currentConflict := index. ^self]].