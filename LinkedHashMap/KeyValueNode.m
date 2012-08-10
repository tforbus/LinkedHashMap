//
//  KeyValueNode.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KeyValueNode.h"

@implementation KeyValueNode
@synthesize nodeKey, next, previous;


-(id)initWithValue:(id)value andKey:(id)key
{
    self = [super initWithValue:value];
    self.nodeKey = key;
    
    return self;
}

@end
