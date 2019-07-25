baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MergingInsideSqueak-Core';
				package: 'MergingInsideSqueak-Diff2';
				package: 'MergingInsideSqueak-Monticello';
                        package: 'Squit-Core';
                        package: 'Squot-Core';
                        package: 'Monticello-Base';
                        package: 'Monticello-Modeling';
				package: 'Squot-Tests-Tools';
				package: 'MergingInsideSqueak-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('MergingInsideSqueak-Core' 'MergingInsideSqueak-Diff2' 'Squot-Tests-Tools' 'Squit-Core' 'Monticello-Base' 'Monticello-Modeling' 'Squot-Core' );
				group: 'tests' with: #('MergingInsideSqueak-Tests')];
				yourself
