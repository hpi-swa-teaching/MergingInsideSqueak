patch-calculation
patchIt
	
	self classesDo: [ :baseClass :targetClass |
			(baseClass isNil and: targetClass notNil) ifTrue: [
				self patchOperations add: (self addedClass: targetClass)].
			(baseClass notNil and: targetClass isNil) ifTrue: [
				self patchOperations add: (self removedClass: baseClass)].
			(baseClass notNil and: targetClass notNil) ifTrue: [
				self methodsIn: baseClass and: targetClass do: [ :baseMethod :targetMethod |
						(baseMethod isNil and: targetMethod notNil) ifTrue: [ 
							self addedMethod: targetMethod].
						(baseMethod notNil and: targetMethod isNil) ifTrue: [ 
							self removedMethod: baseMethod].
						(baseMethod notNil and: [targetMethod notNil and: [(baseMethod = targetMethod) not]]) ifTrue: [
							self modifiedMethod: baseMethod to: targetMethod]
		]]].
	^self patchOperations collect: [ :class |  self choosePatchForClass: class ]