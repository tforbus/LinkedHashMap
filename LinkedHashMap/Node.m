//
//  Node.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Node.h"

@implementation Node
@synthesize nodeValue;

-(id)init
{
    nodeValue = nil;
    return self;
}

-(id)initWithValue:(id)value
{
    nodeValue = value;
    return self;
}

-(NSString*)description
{
    return [[self.nodeValue description] stringByAppendingString:@"->"];
}

@end
