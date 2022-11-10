Class {
	#name : #Deck,
	#superclass : #Object,
	#instVars : [
		'cards'
	],
	#category : #Cards
}

{ #category : #accessing }
Deck >> cards: anArray [
	cards := anArray
]

{ #category : #accessing }
Deck >> gtCardListFor: aView [
	<gtView>
	^aView list
	title: 'Cards';
	items: [cards]
]
