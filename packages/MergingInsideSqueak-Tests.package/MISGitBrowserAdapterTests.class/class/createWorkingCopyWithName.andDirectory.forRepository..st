as yet unclassified
createWorkingCopyWithName: aNameString andDirectory: aDirectory forRepository: aSquitRepository

	| workingCopy|
	workingCopy := SquotWorkingCopy newOnObjectMemory.
	workingCopy name: aNameString.
	"repositoryPath := aDirectory pathName."
	"
	fsGitRepository addRemote: remoteString url: 'http://example.com/git/example.git'.
	gitRepository updateRef: branchString ofRemote: remoteString to: hexHashString
		message: 'forge remote-tracking branch'.
	^ squitRepository historianNamed: remoteString, '/', branchString"
	workingCopy repository: aSquitRepository. "(SquitRepository new initializeInDirectory: (FileSystem disk root resolve: repositoryPath))."
	workingCopy repository gitRepository addRemote: 'stub/master' url: 'http://example.com/git/example.git'.
	workingCopy loadedHistorian: (workingCopy repository historianNamed: 'stub/master').
	
	"patch := SquotPatch builder
		patchFrom: (objectContainer ifNil: [SquotSnapshot empty])
		to: self."
		
	workingCopy register.
	
	"
	patch := SquotPatchBuilder new addDiff: (SquotArtifactDiff left: '' right: 'Hallo Welt').
	workingCopy saveNewVersionFromPatch: patch message: 'This is a test commit'.
	patch := SquotPatchBuilder new addDiff: (SquotArtifactDiff left: '' right: 'Hallo Welt2').
	workingCopy saveNewVersionFromPatch: patch message: 'This is a test commit2'.
	"
	workingCopy add: 'Test' at: 'objects/myObject1'.
	workingCopy add: 'Test2' at: 'objects/myObject2'.
	^ workingCopy