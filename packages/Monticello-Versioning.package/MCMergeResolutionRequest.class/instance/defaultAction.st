handling
defaultAction
	^ ("MCMergeBrowser" MISMCMergeBrowserAdapter new
		merger: merger;
		label: messageText) showModally