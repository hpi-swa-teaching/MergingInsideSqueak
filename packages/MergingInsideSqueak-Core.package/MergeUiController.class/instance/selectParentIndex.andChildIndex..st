selection
selectParentIndex: aParentIndex andChildIndex: aChildIndex

	self selectParent: (self conflicts at: aParentIndex) andChild: ((self conflicts at: aParentIndex) change methods at: aChildIndex)