as yet unclassified
extractFrom: aCollection
	"Extracts a subcollection from aCollection corresponding to my offset and length."
	^ aCollection copyFrom: offset to: offset + length - 1.