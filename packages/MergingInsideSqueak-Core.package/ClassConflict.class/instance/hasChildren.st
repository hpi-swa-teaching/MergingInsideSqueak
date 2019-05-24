accessing
hasChildren

	^(self getPropertyConflicts addAll: self getMethodConflicts) size > 0