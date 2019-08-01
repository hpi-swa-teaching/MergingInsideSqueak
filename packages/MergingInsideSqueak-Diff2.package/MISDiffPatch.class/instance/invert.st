selecting
invert
	"Causes this patch to invert itself; if previously it represented the changes from file1 to file2, after being sent #invert, it will represent the changes from file2 to file1. After inversion, calling #applyTo: on file2 will yield file1, rather than the other way around."
	chunks do: [:entry | entry key: entry value value: entry key].
	snippets do: [:entry | entry key: entry value value: entry key].
