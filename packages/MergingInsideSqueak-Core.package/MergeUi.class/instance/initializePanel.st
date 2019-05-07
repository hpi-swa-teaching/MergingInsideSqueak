ui - private
initializePanel
	
	panel := UiContainer new.
	panel extent: (700@400).
	panel position: (0@0).
	panel hResizing: (#rigid).
	panel vResizing: (#rigid).
	panel minWidth: (1).
	panel minHeight: (1).
	panel cellInset: (4).
	panel cellPositioning: (#center).
	panel cellSpacing: (#none).
	panel layoutInset: (4).
	panel listCentering: (#topLeft).
	panel listDirection: (#topToBottom).
	panel listSpacing: (#none).
	panel maxCellSize: (1073741823).
	panel minCellSize: (0).
	panel wrapCentering: (#topLeft).
	panel wrapDirection: (#none).
	panel frameFractions: (0@0 corner: 1@1).
	panel frameOffsets: (0@0 corner: 0@0).
	panel balloonText: ('').
	panel balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	panel color: (Color paleTan).
	panel borderWidth: (0).
	panel borderStyle2: (#simple).
	panel borderColor: (Color black).
	panel setProperty: #objectName toValue: 'panel'.
	SaveButton := UiPushButton new.
	SaveButton changeTableLayout.
	SaveButton extent: (85@20).
	SaveButton position: (533@10).
	SaveButton hResizing: (#shrinkWrap).
	SaveButton vResizing: (#shrinkWrap).
	SaveButton minWidth: (1).
	SaveButton minHeight: (1).
	SaveButton cellInset: (4).
	SaveButton cellPositioning: (#center).
	SaveButton cellSpacing: (#none).
	SaveButton layoutInset: (2@0 corner: 2@0).
	SaveButton listCentering: (#topLeft).
	SaveButton listDirection: (#leftToRight).
	SaveButton listSpacing: (#none).
	SaveButton maxCellSize: (1073741823).
	SaveButton minCellSize: (0).
	SaveButton wrapCentering: (#topLeft).
	SaveButton wrapDirection: (#none).
	SaveButton frameFractions: (0@0 corner: 1@1).
	SaveButton frameOffsets: (0@0 corner: 0@0).
	SaveButton balloonText: ('').
	SaveButton balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	SaveButton enabled: (true).
	SaveButton setProperty: #iconByDesigner toValue: 'nil'.
	SaveButton icon: (nil).
	SaveButton text: ('Save & Close').
	SaveButton color: (Color silver).
	SaveButton checkable: (false).
	SaveButton checked: (false).
	SaveButton autoExclusive: (false).
	SaveButton setProperty: #objectName toValue: 'SaveButton'.
	panel addChild: SaveButton.
	LastButton := UiPushButton new.
	LastButton changeTableLayout.
	LastButton extent: (102@20).
	LastButton position: (275@10).
	LastButton hResizing: (#shrinkWrap).
	LastButton vResizing: (#shrinkWrap).
	LastButton minWidth: (1).
	LastButton minHeight: (1).
	LastButton cellInset: (4).
	LastButton cellPositioning: (#center).
	LastButton cellSpacing: (#none).
	LastButton layoutInset: (2@0 corner: 2@0).
	LastButton listCentering: (#topLeft).
	LastButton listDirection: (#leftToRight).
	LastButton listSpacing: (#none).
	LastButton maxCellSize: (1073741823).
	LastButton minCellSize: (0).
	LastButton wrapCentering: (#topLeft).
	LastButton wrapDirection: (#none).
	LastButton frameFractions: (0@0 corner: 1@1).
	LastButton frameOffsets: (0@0 corner: 0@0).
	LastButton balloonText: (nil).
	LastButton balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	LastButton enabled: (true).
	LastButton setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0308Normal'.
	LastButton icon: (UiDiagonaIcons icon0308Normal).
	LastButton text: ('Last Conflict').
	LastButton color: (Color silver).
	LastButton checkable: (false).
	LastButton checked: (false).
	LastButton autoExclusive: (false).
	LastButton setProperty: #objectName toValue: 'LastButton'.
	panel addChild: LastButton.
	NextButton := UiPushButton new.
	NextButton changeTableLayout.
	NextButton extent: (105@20).
	NextButton position: (160@10).
	NextButton hResizing: (#shrinkWrap).
	NextButton vResizing: (#shrinkWrap).
	NextButton minWidth: (1).
	NextButton minHeight: (1).
	NextButton cellInset: (4).
	NextButton cellPositioning: (#center).
	NextButton cellSpacing: (#none).
	NextButton layoutInset: (2@0 corner: 2@0).
	NextButton listCentering: (#topLeft).
	NextButton listDirection: (#leftToRight).
	NextButton listSpacing: (#none).
	NextButton maxCellSize: (1073741823).
	NextButton minCellSize: (0).
	NextButton wrapCentering: (#topLeft).
	NextButton wrapDirection: (#none).
	NextButton frameFractions: (0@0 corner: 1@1).
	NextButton frameOffsets: (0@0 corner: 0@0).
	NextButton balloonText: ('').
	NextButton balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	NextButton enabled: (true).
	NextButton setProperty: #iconByDesigner toValue: 'UiDiagonaIcons icon0307Normal'.
	NextButton icon: (UiDiagonaIcons icon0307Normal).
	NextButton text: ('Next Conflict').
	NextButton color: (Color silver).
	NextButton checkable: (false).
	NextButton checked: (false).
	NextButton autoExclusive: (false).
	NextButton setProperty: #objectName toValue: 'NextButton'.
	panel addChild: NextButton.
	AButton := UiPushButton new.
	AButton changeTableLayout.
	AButton extent: (63@20).
	AButton position: (387@10).
	AButton hResizing: (#shrinkWrap).
	AButton vResizing: (#shrinkWrap).
	AButton minWidth: (1).
	AButton minHeight: (1).
	AButton cellInset: (4).
	AButton cellPositioning: (#center).
	AButton cellSpacing: (#none).
	AButton layoutInset: (2@0 corner: 2@0).
	AButton listCentering: (#topLeft).
	AButton listDirection: (#leftToRight).
	AButton listSpacing: (#none).
	AButton maxCellSize: (1073741823).
	AButton minCellSize: (0).
	AButton wrapCentering: (#topLeft).
	AButton wrapDirection: (#none).
	AButton frameFractions: (0@0 corner: 1@1).
	AButton frameOffsets: (0@0 corner: 0@0).
	AButton balloonText: ('').
	AButton balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	AButton enabled: (true).
	AButton setProperty: #iconByDesigner toValue: 'nil'.
	AButton icon: (nil).
	AButton text: ('Choose A').
	AButton color: (Color silver).
	AButton checkable: (false).
	AButton checked: (false).
	AButton autoExclusive: (false).
	AButton setProperty: #objectName toValue: 'AButton'.
	panel addChild: AButton.
	BButton := UiPushButton new.
	BButton changeTableLayout.
	BButton extent: (63@20).
	BButton position: (460@10).
	BButton hResizing: (#shrinkWrap).
	BButton vResizing: (#shrinkWrap).
	BButton minWidth: (1).
	BButton minHeight: (1).
	BButton cellInset: (4).
	BButton cellPositioning: (#center).
	BButton cellSpacing: (#none).
	BButton layoutInset: (2@0 corner: 2@0).
	BButton listCentering: (#topLeft).
	BButton listDirection: (#leftToRight).
	BButton listSpacing: (#none).
	BButton maxCellSize: (1073741823).
	BButton minCellSize: (0).
	BButton wrapCentering: (#topLeft).
	BButton wrapDirection: (#none).
	BButton frameFractions: (0@0 corner: 1@1).
	BButton frameOffsets: (0@0 corner: 0@0).
	BButton balloonText: (nil).
	BButton balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	BButton enabled: (true).
	BButton setProperty: #iconByDesigner toValue: 'nil'.
	BButton icon: (nil).
	BButton text: ('Choose B').
	BButton color: (Color silver).
	BButton checkable: (false).
	BButton checked: (false).
	BButton autoExclusive: (false).
	BButton setProperty: #objectName toValue: 'BButton'.
	panel addChild: BButton.
	ConflictList := UiListView new.
	ConflictList extent: (140@380).
	ConflictList position: (10@10).
	ConflictList hResizing: (#rigid).
	ConflictList vResizing: (#rigid).
	ConflictList minWidth: (1).
	ConflictList minHeight: (1).
	ConflictList cellInset: (0).
	ConflictList cellPositioning: (#center).
	ConflictList cellSpacing: (#none).
	ConflictList layoutInset: (0).
	ConflictList listCentering: (#topLeft).
	ConflictList listDirection: (#topToBottom).
	ConflictList listSpacing: (#none).
	ConflictList maxCellSize: (1152921504606846975).
	ConflictList minCellSize: (0).
	ConflictList wrapCentering: (#topLeft).
	ConflictList wrapDirection: (#none).
	ConflictList frameFractions: (0@0 corner: 1@1).
	ConflictList frameOffsets: (0@0 corner: 0@0).
	ConflictList balloonText: ('').
	ConflictList balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	ConflictList widgetResizable: (true).
	ConflictList horizontalScrollBarPolicy: (#alwaysOff).
	ConflictList verticalScrollBarPolicy: (#asNeeded).
	ConflictList outerBorderWidth: (0).
	ConflictList scrollBarThickness: (9).
	ConflictList modelClass: (nil).
	ConflictList horizontalHeaderVisible: (false).
	ConflictList verticalHeaderVisible: (false).
	ConflictList selectionBehavior: (#selectRows).
	ConflictList selectionMode: (UiViewSingleSelection).
	ConflictList listOrientation: (#default).
	ConflictList hAlignment: (#left).
	ConflictList vAlignment: (#top).
	ConflictList setProperty: #objectName toValue: 'ConflictList'.
	panel addChild: ConflictList.
	MergeA := UiScrollArea new.
	MergeA extent: (260@170).
	MergeA position: (160@40).
	MergeA hResizing: (#rigid).
	MergeA vResizing: (#rigid).
	MergeA minWidth: (1).
	MergeA minHeight: (1).
	MergeA cellInset: (0).
	MergeA cellPositioning: (#center).
	MergeA cellSpacing: (#none).
	MergeA layoutInset: (0).
	MergeA listCentering: (#topLeft).
	MergeA listDirection: (#topToBottom).
	MergeA listSpacing: (#none).
	MergeA maxCellSize: (1152921504606846975).
	MergeA minCellSize: (0).
	MergeA wrapCentering: (#topLeft).
	MergeA wrapDirection: (#none).
	MergeA frameFractions: (0@0 corner: 1@1).
	MergeA frameOffsets: (0@0 corner: 0@0).
	MergeA balloonText: (nil).
	MergeA balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	MergeA widgetResizable: (false).
	MergeA horizontalScrollBarPolicy: (#alwaysOn).
	MergeA verticalScrollBarPolicy: (#alwaysOn).
	MergeA outerBorderWidth: (0).
	MergeA scrollBarThickness: (9).
	MergeA setProperty: #objectName toValue: 'MergeA'.
	panel addChild: MergeA.
	MergeB := UiScrollArea new.
	MergeB extent: (260@170).
	MergeB position: (430@40).
	MergeB hResizing: (#rigid).
	MergeB vResizing: (#rigid).
	MergeB minWidth: (1).
	MergeB minHeight: (1).
	MergeB cellInset: (0).
	MergeB cellPositioning: (#center).
	MergeB cellSpacing: (#none).
	MergeB layoutInset: (0).
	MergeB listCentering: (#topLeft).
	MergeB listDirection: (#topToBottom).
	MergeB listSpacing: (#none).
	MergeB maxCellSize: (1152921504606846975).
	MergeB minCellSize: (0).
	MergeB wrapCentering: (#topLeft).
	MergeB wrapDirection: (#none).
	MergeB frameFractions: (0@0 corner: 1@1).
	MergeB frameOffsets: (0@0 corner: 0@0).
	MergeB balloonText: (nil).
	MergeB balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	MergeB widgetResizable: (false).
	MergeB horizontalScrollBarPolicy: (#alwaysOn).
	MergeB verticalScrollBarPolicy: (#alwaysOn).
	MergeB outerBorderWidth: (0).
	MergeB scrollBarThickness: (9).
	MergeB setProperty: #objectName toValue: 'MergeB'.
	panel addChild: MergeB.
	MergeResult := ViSourceCodeEdit new.
	MergeResult extent: (530@170).
	MergeResult position: (160@220).
	MergeResult hResizing: (#rigid).
	MergeResult vResizing: (#rigid).
	MergeResult minWidth: (1).
	MergeResult minHeight: (1).
	MergeResult cellInset: (0).
	MergeResult cellPositioning: (#center).
	MergeResult cellSpacing: (#none).
	MergeResult layoutInset: (0).
	MergeResult listCentering: (#topLeft).
	MergeResult listDirection: (#topToBottom).
	MergeResult listSpacing: (#none).
	MergeResult maxCellSize: (1152921504606846975).
	MergeResult minCellSize: (0).
	MergeResult wrapCentering: (#topLeft).
	MergeResult wrapDirection: (#none).
	MergeResult frameFractions: (0@0 corner: 1@1).
	MergeResult frameOffsets: (0@0 corner: 0@0).
	MergeResult balloonText: (nil).
	MergeResult balloonColor: ((Color r: 0.934 g: 0.91 b: 0.836)).
	MergeResult widgetResizable: (true).
	MergeResult horizontalScrollBarPolicy: (#alwaysOff).
	MergeResult verticalScrollBarPolicy: (#asNeeded).
	MergeResult outerBorderWidth: (1).
	MergeResult scrollBarThickness: (9).
	MergeResult theText: ('').
	MergeResult readOnly: (false).
	MergeResult autoConvert: (false).
	MergeResult autoAccept: (false).
	MergeResult acceptOnFocusLost: (false).
	MergeResult scrollingMode: (#none).
	MergeResult scrollingLimit: (10).
	MergeResult setProperty: #objectName toValue: 'MergeResult'.
	panel addChild: MergeResult.
	panel setProperty: #uiClassName toValue: 'Merge'.