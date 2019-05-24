accessing
hasChildren

	^(self getPropertyConflicts copy addAll: self getMethodConflicts) size > 0