baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MergingInsideSqueak-Core';
				package: 'MergingInsideSqueak-Tests' with: [spec requires: #('MergingInsideSqueak-Core')];
				yourself.
			spec
				group: 'default' with: #('MergingInsideSqueak-Core');
				group: 'tests' with: #('MergingInsideSqueak-Tests')];
				yourself