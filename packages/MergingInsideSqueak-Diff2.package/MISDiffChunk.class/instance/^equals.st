extracting
= otherChunk
	^ (otherChunk isKindOf: MISDiffChunk) and:
	[(self offset = otherChunk offset) and:
	[(self length = otherChunk length)]]