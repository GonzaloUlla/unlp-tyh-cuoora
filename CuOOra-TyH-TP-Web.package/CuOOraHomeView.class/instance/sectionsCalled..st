accessing-children
sectionsCalled: sectionName
	^ self children collect: [ :childView | childView sectionName = sectionName ]