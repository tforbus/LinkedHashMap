//
//  KVDoubleLinkedList.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KVDoubleLinkedList.h"

@implementation KVDoubleLinkedList

-(id)init
{
    return self;
}


-(KeyValueNode*)insert:(id)value withKey:(id)key
{
    KeyValueNode* noKey = [self insert:value];
    noKey.nodeKey = key;
    
    return noKey;
}

-(KeyValueNode*)insert:(id)value
{
    KeyValueNode* newNode = [[KeyValueNode alloc] initWithValue:value];
    newNode.nodeKey = nil;
    
    if(head == nil)
    {
        head = newNode;
        tail = newNode;
    }
    
    else
    {
        tail.next = newNode;
        newNode.previous = tail;
        tail = newNode;
    }
    
    return newNode;
}


-(KeyValueNode*)removeNode:(KeyValueNode*)value
{
    NSLog(@"Value being removed is %@", value.description);
    
    if(head == value && head == tail)
    {
        head = nil;
        tail = nil;
    }
    
    else if(head == value && head != tail)
    {
        head = head.next;
        head.previous = nil;
    }
    
    else if(head != value && tail != value)
    {
        value.next.previous = value.previous;
        value.previous.next = value.next;
        
        value.next = nil;
        value.previous = nil;
    }
    
    else
    {
        tail = value.previous;
        tail.next = nil;
    }
    
    return value;
}


-(NSString*)description
{
    NSString* builder = @"";
    KeyValueNode* temp = head;
    
    while(temp != nil)
    {
        builder = [builder stringByAppendingString:temp.description]; 
        temp = temp.next;
    }
    
    return builder;
}


-(NSArray*)asArray
{
    NSMutableArray* array = [[NSMutableArray alloc] init];
    KeyValueNode* temp = head;
    
    while(temp != nil)
    {
        [array addObject:temp.nodeValue];
        temp = temp.next;
    }
    
    return [NSArray arrayWithArray:array];
}


-(NSArray*)asKeyArray
{
    NSMutableArray* array = [[NSMutableArray alloc] init];
    KeyValueNode* temp = head;
    
    while(temp != nil)
    {
        [array addObject:temp.nodeKey];
        temp = temp.next;
    }
    
    return [NSArray arrayWithArray:array];
}


-(NSArray*)asValueArray
{
    return [self asArray];
}

@end
