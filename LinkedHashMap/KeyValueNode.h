//
//  KeyValueNode.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DListNode.h"

@interface KeyValueNode : DListNode

@property(nonatomic, strong) id nodeKey;
@property(nonatomic, strong) KeyValueNode* next;
@property(nonatomic, strong) KeyValueNode* previous;

-(id)initWithValue:(id)value andKey:(id)key;
@end
