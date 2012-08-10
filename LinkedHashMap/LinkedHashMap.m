//
//  LinkedHashMap.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "LinkedHashMap.h"

@implementation LinkedHashMap

-(id)init
{
    keyValueMap = [[NSMutableDictionary alloc] init];
    keyAddressMap = [[NSMutableDictionary alloc] init];
    //keyList = [[DoubleLinkedList alloc] init];
    //valueList = [[DoubleLinkedList alloc] init];
    keyValueList = [[KVDoubleLinkedList alloc] init];
    
    return self;
}


-(void)insertValue:(id)value withKey:(id)key
{
    //Node* node = [valueList insert:value];
    Node* node = [keyValueList insert:value withKey:key];
    [keyValueMap setObject:value forKey:key];
    [keyAddressMap setObject:node forKey:key];
    //[keyList insert:key];
    
}


-(void)removeValueWithKey:(id)key
{
    NSLog(@":: keyList is %@", keyList);
    NSLog(@":: valueList is %@", valueList);
    [keyValueMap removeObjectForKey:key];
    //[keyList removeNode:[keyAddressMap objectForKey:key]];
    //[keyList removeNode:key];
    //[valueList removeNode:[keyAddressMap objectForKey:key]];
    [keyValueList removeNode:[keyAddressMap objectForKey:key]];
    [keyAddressMap removeObjectForKey:key];
}


-(id)valueForKey:(id)key
{
    return [keyValueMap objectForKey:key];
}


-(NSArray*)allKeys
{
    return [keyValueList asKeyArray];
}


-(NSArray*)allValues
{
    return [keyValueList asValueArray];
}

@end
