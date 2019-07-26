operations
changesRelativeToRepository: aRepository
	| ancestorVersion ancestorSnapshot |
	ancestorVersion := aRepository closestAncestorVersionFor: ancestry ifNone: [].
	ancestorSnapshot := ancestorVersion ifNil: [MCSnapshot empty] ifNotNil: [ancestorVersion snapshot].
	^ package snapshot patchRelativeToBase: ancestorSnapshot