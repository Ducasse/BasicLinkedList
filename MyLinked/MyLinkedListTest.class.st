Class {
	#name : #MyLinkedListTest,
	#superclass : #TestCase,
	#category : #MyLinked
}

{ #category : #tests }
MyLinkedListTest >> testAdd [

	| l node |
	node := (MyNode withValue: 66).
	l := MyLinkedList new.
	l addFirstNode: (MyNode withValue: 33).
	l addFirstNode: node.
	self assert: l head value equals: 66.
	self assert: l head nextNode value equals: 33.
	
]

{ #category : #tests }
MyLinkedListTest >> testAddLast [

	| l  |
	l := MyLinkedList new.
	l addLastNode: (MyNode withValue: 33).
	l addLastNode: (MyNode withValue: 66).
	self assert: l head value equals: 33.
	self assert: l head nextNode value equals: 66.
	self assert: l head nextNode nextNode value isNil.
	self assert: l tail value equals: 66
	
]

{ #category : #tests }
MyLinkedListTest >> testAddMultiple [

	| l node |
	node := (MyNode withValue: 33).
	l := MyLinkedList new.
	l addFirstNode: (MyNode withValue: 66).
	l addFirstNode: node.
	l addFirstNode: (MyNode withValue: 11).
	self assert: l head value equals: 11.
	self assert: l head nextNode value equals: 33.
	self assert: l head nextNode nextNode value equals: 66.
]

{ #category : #tests }
MyLinkedListTest >> testAddOnEmptyLinkedList [

	| l node |
	node := (MyNode withValue: 66).
	l := MyLinkedList new.
	l addFirstNode: (MyNode withValue: 33).
	l addFirstNode: node.
	self assert: l head value equals: 66.
	self assert: l head nextNode value equals: 33.
	
]

{ #category : #tests }
MyLinkedListTest >> testAddOnEmptyList [

	| l node |
	node := (MyNode withValue: 33).
	l := MyLinkedList new.
	l addFirstNode: node.
	self assert: l head value equals: 33.
	self assert: l head == node.
	
]

{ #category : #tests }
MyLinkedListTest >> testAddOnLinkedList [

	| l node |
	node := (MyNode withValue: 66).
	l := MyLinkedList new.
	l addFirstNode: (MyNode withValue: 33).
	l addFirstNode: node.
	self assert: l head value equals: 66.
	self assert: l head nextNode value equals: 33.
	
]

{ #category : #tests }
MyLinkedListTest >> testEmptySize [

	| l |
	l := MyLinkedList new.
	self assert: l size equals: 0
]

{ #category : #tests }
MyLinkedListTest >> testIsEmpty [

	self assert: MyLinkedList new isEmpty
]
