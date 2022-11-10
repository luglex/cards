Class {
	#name : #Try,
	#superclass : #Object,
	#instVars : [
		'solution',
		'card'
	],
	#category : #Cards
}

{ #category : #accessing }
Try >> card: aCard [
	card := aCard
]

{ #category : #accessing }
Try >> gtLiveFor: aView [
	<gtView>
	| editor button container |
	^ aView explicit
	title: 'Live';
	stencil: [editor := BrEditor new
		aptitude: BrGlamorousRegularEditorAptitude;
		text: self solution ;
		border: (BlBorder paint: Color veryLightGray);
		background: (self isCorrect 
				ifTrue: [BrGlamorousColors successBackgroundColor]
				ifFalse: [BrGlamorousColors errorBackgroundColor]);
		hMatchParent ;
		vFitContent;
		margin: (BlInsets bottom: 10).
button := BrButton new
		aptitude: BrGlamorousButtonWithLabelAptitude;
		label: 'Try';
		action: [
			self solution: editor text asString.
			editor
				background: (self isCorrect
						ifTrue: [BrGlamorousColors successBackgroundColor]
						ifFalse: [BrGlamorousColors errorBackgroundColor])].
container := BrVerticalPane new
		addChild: editor;
		addChild: button;
		matchParent]
]

{ #category : #accessing }
Try >> isCorrect [
	^solution = card solution
]

{ #category : #accessing }
Try >> solution [
	^ solution
]

{ #category : #accessing }
Try >> solution: aString [
	solution := aString
]
