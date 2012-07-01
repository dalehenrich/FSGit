validation
validateUnreachableObjects
	| unreachableCopy reachableCopy |
	unreachable ifEmpty: [ ^ self ].
	
	self collectUnreachableErrors.
	unreachableCopy := unreachable copy.
	reachableCopy := reachable copy.
	self acceptCollection: unreachable.
	reachable := reachableCopy.
	unreachable := unreachableCopy.