ui - private
initializePanel
	
	panel := BorderedMorph new.
	panel extent: (700@400).
	panel position: (0@0).
	panel color: (Color paleTan).
	panel borderWidth: (0).
	panel borderColor: (Color black).
	SaveButton := SimpleButtonMorph new.
	SaveButton extent: (85@20).
	SaveButton position: (533@10).
	SaveButton label: ('Save & Close').
	SaveButton color: (Color r: 204/255 g: 204/255 b: 204/255).
	panel addMorph: SaveButton.
	LastButton := SimpleButtonMorph new.
	LastButton extent: (102@20).
	LastButton position: (255@10).
	LastButton label: ('Last Conflict').
	LastButton color: (Color r: 204/255 g: 204/255 b: 204/255).
	panel addMorph: LastButton.
	NextButton := SimpleButtonMorph new.
	NextButton extent: (105@20).
	NextButton position: (160@10).
	NextButton label: ('Next Conflict').
	NextButton color: (Color r: 204/255 g: 204/255 b: 204/255).
	panel addMorph: NextButton.
	AButton := SimpleButtonMorph new.
	AButton extent: (63@20).
	AButton position: (367@10).
	AButton label: ('Choose A').
	AButton color: (Color r: 204/255 g: 204/255 b: 204/255).
	panel addMorph: AButton.
	BButton := SimpleButtonMorph new.
	BButton extent: (63@20).
	BButton position: (440@10).
	BButton label: ('Choose B').
	BButton color: (Color r: 204/255 g: 204/255 b: 204/255).
	panel addMorph: BButton.
	ConflictList := PluggableListMorph new.
	ConflictList extent: (140@380).
	ConflictList position: (10@10).
	panel addMorph: ConflictList.
	MergeA := PluggableTextMorph new.
	MergeA extent: (260@170).
	MergeA position: (160@40).
	panel addMorph: MergeA.
	MergeB := PluggableTextMorph new.
	MergeB extent: (260@170).
	MergeB position: (430@40).
	panel addMorph: MergeB.
	MergeResult := PluggableTextMorph new.
	MergeResult extent: (530@170).
	MergeResult position: (160@220).
	panel addMorph: MergeResult.