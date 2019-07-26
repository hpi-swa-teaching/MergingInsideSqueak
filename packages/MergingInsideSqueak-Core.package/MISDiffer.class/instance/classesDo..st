patch-calculation
classesDo: aBlock

	self base sources do: [ :baseClass |
		self target sources detect: [ :targetClass |
			baseClass className = targetClass className
		] ifFound: [ :targetSource |
			" was modified "
			aBlock value: baseClass value: targetSource
		] ifNone: [
			" was removed from target "
			aBlock value: baseClass value: nil
		]].
	(self target sources reject: [:targetClass |
			self base sources anySatisfy: [ :baseClass | baseClass className = targetClass className ]
		]) do: [ :targetClass |
			" was added to target "
			aBlock value: nil value: targetClass
		]