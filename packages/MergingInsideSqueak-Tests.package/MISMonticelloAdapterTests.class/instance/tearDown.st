as yet unclassified
tearDown

	self clearPackageCache.
	workingCopy unregister.
	self restoreMocks.
	SystemOrganizer default removeEmptyCategories.
	MCSnapshotTest organization removeEmptyCategories.
	Utilities authorInitials: savedInitials