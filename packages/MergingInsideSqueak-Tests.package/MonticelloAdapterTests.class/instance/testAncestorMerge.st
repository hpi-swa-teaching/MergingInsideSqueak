as yet unclassified
testAncestorMerge
	<timeout: 30 "seconds">
	"| base revA revB revC |

	base := self snapshot.
	self change: #a toReturn: 'a1'.
	revA :=  self snapshot.
	self change: #b toReturn: 'b1'.
	revB :=  self snapshot.	
	self change: #c toReturn: 'c1'.
	revC :=  self snapshot.	

	self should: [revA merge] raise: MCNoChangesException."