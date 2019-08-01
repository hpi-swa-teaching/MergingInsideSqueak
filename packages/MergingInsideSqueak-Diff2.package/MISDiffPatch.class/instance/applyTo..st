applying
applyTo: file
	"Applies this patch to the given collection. Makes no sanity checks on the contents of the collection - simply blindly applies the chunks and snippets to its argument."
	| result commonOffset |
	result := OrderedCollection new.
	commonOffset := 1.
	chunks with: snippets do: [:chunk :snippet |
		result addAll: (file copyFrom: commonOffset to: chunk key offset - 1).
		result addAll: (snippet value).
		commonOffset := chunk key offset + chunk key length].
	result addAll: (file copyFrom: commonOffset to: file size).
	^ result as: file species.