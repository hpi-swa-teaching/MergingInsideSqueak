# MergingInsideSqueak [![Build Status](https://travis-ci.org/hpi-swa-teaching/MergingInsideSqueak.svg?branch=master)](https://travis-ci.org/hpi-swa-teaching/MergingInsideSqueak)
Group 18

test1 := 'Hallo', Character cr, '1223', Character cr, '1223'.
test2 := 'Hallo', Character cr, '1553', Character cr, '1443'.

conflict1 := FileDiffWrapper newForA: test1 andB: test2.
conflicts := OrderedCollection with: conflict1.
MergeUi openWithConflicts: conflicts.
