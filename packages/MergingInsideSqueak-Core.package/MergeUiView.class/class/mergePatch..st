as yet unclassified
mergePatch: aMISPatch

	| instance |
	instance := self new.
	instance getController patch: aMISPatch.
	^ instance

	