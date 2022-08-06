Class {
	#name : #BaselineOfCards,
	#superclass : #BaselineOf,
	#category : #BaselineOfCards
}

{ #category : #baseline }
BaselineOfCards >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec package: #'Cards' ]
]
