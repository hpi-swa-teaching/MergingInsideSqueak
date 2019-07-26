private
flushAllFilenames
	repositories do: [ : each | each flushAllFilenames ]