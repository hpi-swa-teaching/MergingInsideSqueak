class initialization
mergePatch: aMISPatch

	| instance |
	instance := self new.
	instance controller patch: aMISPatch.
	^ instance

	