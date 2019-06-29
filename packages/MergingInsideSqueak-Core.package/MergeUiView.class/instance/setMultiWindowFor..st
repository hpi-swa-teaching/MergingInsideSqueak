building
setMultiWindowFor: aWindowSpec
	"set the multi-window style for the windowSpec according to both the users preference and the browser's ability"
	self class useMultiWindowBrowsers
		ifTrue: [aWindowSpec multiWindowStyle: #labelButton].

