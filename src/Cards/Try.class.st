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
