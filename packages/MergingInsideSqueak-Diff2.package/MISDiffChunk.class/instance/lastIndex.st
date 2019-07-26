accessing
lastIndex
	"Returns the rightmost index contained in my range. (Offset is the leftmost index.) If my length is zero, will return an index lower than my offset."
	^ offset + length - 1