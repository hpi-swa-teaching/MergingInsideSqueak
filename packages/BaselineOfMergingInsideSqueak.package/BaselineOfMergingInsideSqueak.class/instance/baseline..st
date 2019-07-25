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
				package: 'Sqout-Tests-Tools';
				package: 'MergingInsideSqueak-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('MergingInsideSqueak-Core' 'MergingInsideSqueak-Diff2' 'Sqout-Tests-Tools');
				group: 'tests' with: #('MergingInsideSqueak-Tests')];
				yourself
