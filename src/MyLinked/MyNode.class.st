Class {
	#name : #MyNode,
	#superclass : #Object,
	#instVars : [
		'value',
		'nextNode'
	],
	#category : #MyLinked
}

{ #category : #'instance creation' }
MyNode class >> withValue: anInteger [ 
	
	| inst | 
	inst := self new. 
	inst value: anInteger.
	^ inst
]

{ #category : #accessing }
MyNode >> nextNode [
	^ nextNode
]

{ #category : #accessing }
MyNode >> nextNode: anObject [ 
	nextNode := anObject
]

{ #category : #printing }
MyNode >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: '( '.
	aStream nextPutAll: value asString.
	aStream nextPutAll: ' )'
]

{ #category : #accessing }
MyNode >> value [ 
	^ value
]

{ #category : #accessing }
MyNode >> value: anInteger [ 
	value := anInteger
]
