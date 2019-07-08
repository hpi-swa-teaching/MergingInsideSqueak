as yet unclassified
patchIt
	
	self classesDo: [ :baseClass :targetClass |
			(baseClass isNil and: targetClass notNil) ifTrue: [
				self patchOperations add: (self addedClass: targetClass)].
			(baseClass notNil and: targetClass isNil) ifTrue: [
				self patchOperations add: (self removedClass: baseClass)].
			(baseClass notNil and: targetClass notNil) ifTrue: [
				self methodsIn: baseClass and: targetClass do: [ :baseMethod :targetMethod |
						| ownerClass |
						ownerClass := self patchedClass: baseClass.
						(baseMethod isNil and: targetMethod notNil) ifTrue: [
							ownerClass methods add: (self addedMethod: targetMethod)].
						(baseMethod notNil and: targetMethod isNil) ifTrue: [
							ownerClass methods add: (self removedMethod: baseMethod)].
						(baseMethod notNil and: targetMethod notNil) ifTrue: [
							ownerClass methods add: (self modifiedMethod: baseMethod to: targetMethod)]
		]]].
	^self patchOperations collect: [ :class |  self choosePatchForClass: class ]