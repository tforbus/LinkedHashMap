//
//  DListNode.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Node.h"

@interface DListNode : Node

@property(nonatomic, strong) DListNode* next;
@property(nonatomic, strong) DListNode* previous;
@end
