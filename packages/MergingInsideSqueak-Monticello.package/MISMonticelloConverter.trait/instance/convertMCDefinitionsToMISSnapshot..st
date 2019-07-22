serialising
convertMCDefinitionsToMISSnapshot: aCollectionOfMISDefinitions

  | sources sourceClasses |
  sources := aCollectionOfMISDefinitions collect: [ :definition |
    self convertMCDefinitionToMISSourceHolder: definition
    ].
  self halt.
  sourceClasses := Dictionary new.
  sources do: [ :src | 
    | sourceClass |
    sourceClass := MISClass new className: (src actualClass).
    sourceClasses at: sourceClass ifAbsentPut: [OrderedCollection new].
    (sourceClasses at: sourceClass) add: src
  ].
  self halt.

  " Add the methods to their class "
  sources := OrderedCollection new.
  sourceClasses keysAndValuesDo: [:class :methods |
    class methods: methods.
    sources add: class
  ].
  self halt.
  
  ^MISSnapshot new initializeWithSources: sources