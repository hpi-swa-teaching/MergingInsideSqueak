framing
mergeResultFrame

	^ LayoutFrame new 
		leftFraction: 0.3 offset: 0;
		topFraction: 0.55 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: self buttonHeight negated.

	