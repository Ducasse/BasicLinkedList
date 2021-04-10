Class {
	#name : #MyLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'tail'
	],
	#category : #MyLinked
}

{ #category : #adding }
MyLinkedList >> addFirstNode: aMyNode [
 
	| prev | 
	prev := head. 
	head := aMyNode. 
	head nextNode: prev
	
]

{ #category : #adding }
MyLinkedList >> addLastNode: aMyNode [ 
	
	tail isNil 
		ifFalse: [ tail nextNode: aMyNode ].
	head isNil 	
		ifTrue: [ head := aMyNode ].
	tail := aMyNode.
]

{ #category : #accessing }
MyLinkedList >> head [
	^ head
]

{ #category : #testing }
MyLinkedList >> isEmpty [
	^ head isNil
]

{ #category : #testing }
MyLinkedList >> size [ 
	
	^ 0
]

{ #category : #accesing }
MyLinkedList >> tail [
	^ tail
]
