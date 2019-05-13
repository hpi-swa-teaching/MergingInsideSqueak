as yet unclassified
testInitPartA
	| ui panelA panelB |

	ui := uiController ui.
	panelB := ui paneMorphs at: 2.
	panelA := ui paneMorphs at: 3.
	self assert: panelA textMorph text = uiController textA.
	self assert: panelB textMorph text = uiController textB.
	

