handling
defaultAction
	^ (self browser new
			merger: merger;
			label: messageText) showModally