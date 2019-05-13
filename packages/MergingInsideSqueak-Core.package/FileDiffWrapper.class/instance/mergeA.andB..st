as yet unclassified
mergeA: aTextA andB: aTextB

	diff3block := Diff2 new.
	diff3block
		diffClass: MyersUkkonenDiff; "HuntMcilroyDiff;"
		file0: aTextA;
		file1: aTextB.
		
	result := diff3block merge