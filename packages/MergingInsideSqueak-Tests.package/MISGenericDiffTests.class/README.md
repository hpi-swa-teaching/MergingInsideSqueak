A MISGenericDiffTests is the class for testing all related tests associated with diffing.  I include tests for the pure calculation of the longest common subsequence, the diff which either compares Characters or the whole line and general diffing methods like calculating the indices in which the files differ. For all of my tests I use the MyersUkkonenDiff because there is no other method for calculating longest common subsequences available yet but this can be easily implemented and replaced.