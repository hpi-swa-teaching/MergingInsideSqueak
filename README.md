# MergingInsideSqueak [![Build Status](https://travis-ci.org/hpi-swa-teaching/MergingInsideSqueak.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/MergingInsideSqueak)
Group 18

#### What is it?
MergingInsideSqueak (MIS) is a project that aims at providing a starting point for
Squeak native merging tool
that aids the user when merging and is independent from the underlying version control system
(Git, Monticello).

#### What can it do?
Compared to previous legacy solutions, we added
- A nicer user interface that allows the user to merge versions interactively by
selecting which variant to use for each conflicting line in a change instead
of only being able to include or exclude the entire change
- Can merge both `Monticello` and `GitBrowser`
- Is an independent tool that can be adapted to work with many more version control systems
- diffing, which is basically the implementation of the Legacy system
(- we also added line based diffing which almost works sufficient but would need a little more love before being production ready)

#### How to use it?
If you want to experiment and get a feel of how the tool works, you can open the tool with
```
MISMergeUiView openWithMockData
```
in your workspace.

However, if you install the included `.sar` archive or clone from this repository,
the tool is configured to merge both when using `Monticello` or the `GitBrowser`.
Open one of the tools, open a repository, choose a new change and click **Merge**.

#### How does it work?
The tool consists of the independent merging tool core
inside the package `MergingInsideSqueak-Core`, which holds the MVC User Interface
 and the required data models. The core diffing functionality is contained in
 the `MergingInsideSqueak-Diff2` package.

The `GitBrowser` adapter overwrites the
`SquotWorkingCopy>>mergeVersionInteractively:ifCanceled:` method in the `Squot-Core` package
 and performs the merge by bridging to our tool.

Similarily, the `Monticello` adapter overwrites the
`MCVersion>>merge` method in the `Monticello-Versioning` package and performs
the merge using the `MISMCVersionMerger` by bridging to our tool.

Other included packages are dependencies or have been slightly altered to provide convenience
conversion interfaces.
The tool passes legacy tests, but additional tests tailored to the independent tool
can be found in the `MergingInsideSqueak-Tests` package.

#### Limitations and future work
We focused most on the compatibility with the existing Squeak legacy systems,
the user interface and the diffing.

A major drawback that is shared with the existing legacy solutions is the
lack of freetype merging. While we provide the advantage of being able to select
either version for each confliting line instead of the entire method, there is no
support to edit the merged version freely while keeping the comfort of
selecting versions with a button.

Currently, some possible changes like class comments or timestamps are not
taken into consideration and figuring out nice ways to display those changes
(e.g. an additional layer in the `PluggableTreeViewMorph`).

There is also no support for automatic merging or more complex 3-way merges,
but these were out of our scope and it is left to evaluate the
relevance of such features. Nevertheless, those ideas could be a staring point for future improvement.

