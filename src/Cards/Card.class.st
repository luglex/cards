Class {
	#name : #Card,
	#superclass : #Object,
	#instVars : [
		'text',
		'solution'
	],
	#category : #Cards
}

{ #category : #accessing }
Card >> gtLiveFor: aView [
	<gtView>
	| textElement cardElement solutionElement firstElement |
	^ aView explicit
	title: 'Live';
	stencil: [textElement := BrLabel new
		aptitude: BrGlamorousLabelAptitude;
		text: self text.
solutionElement := BrLabel new
		aptitude: BrGlamorousLabelAptitude ;
		text: self solution.
cardElement := BrVerticalPane new
		background: Color white;
		alignCenter;
		exact: (200@200);
		aptitude: BrShadowAptitude new beLarge;
		margin: (BlInsets all: 10).
cardElement
	addChild: textElement;
	when: BlClickEvent
		do: [ :event |
			firstElement := cardElement children first.
			cardElement removeChildren.
			textElement = firstElement
				ifTrue: [cardElement addChild: solutionElement]
				ifFalse: [cardElement addChild: textElement] ].
cardElement]
]

{ #category : #accessing }
Card >> solution [
	^ solution
]

{ #category : #accessing }
Card >> solution: aString [
	solution := aString
]

{ #category : #accessing }
Card >> text [
	^ text
]

{ #category : #accessing }
Card >> text: aString [
	text := aString
]
