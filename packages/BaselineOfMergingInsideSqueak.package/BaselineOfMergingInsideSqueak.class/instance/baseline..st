baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'MergingInsideSqueak-Core';
				package: 'MergingInsideSqueak-Diff2';
				package: 'Monticello-Base';
             	package: 'Monticello-Versioning';
				package: 'Monticello-Patching';
				package: 'MergingInsideSqueak-Tests' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('MergingInsideSqueak-Core' 'MergingInsideSqueak-Diff2' 'Monticello-Base' 'Monticello-Versioning' 'Monticello-Patching');
				group: 'tests' with: #('MergingInsideSqueak-Tests')];
				yourself
