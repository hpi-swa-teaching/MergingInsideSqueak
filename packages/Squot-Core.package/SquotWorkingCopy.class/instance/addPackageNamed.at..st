adding and removing
addPackageNamed: packageName at: path
self.
	^ self add: (PackageInfo named: packageName) at: path