//
//  DoubleLinkedList.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DoubleLinkedList.h"

@implementation DoubleLinkedList

-(id)init
{
    head = nil;
    tail = nil;
    return self;
}

-(DListNode*)insert:(id)value
{
    DListNode* newNode = [[DListNode alloc] initWithValue:value];
    
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


-(DListNode*)remove:(id)value
{
    NSLog(@"Value value is %@", value);
    return nil;
}


-(DListNode*)removeNode:(DListNode*)value
{
    NSLog(@"Node is %@", value);
    
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
    DListNode* temp = head;
    
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
    DListNode* temp = head;
    
    while(temp != nil)
    {
        [array addObject:temp.nodeValue];
        temp = temp.next;
    }
    
    return [NSArray arrayWithArray:array];
}

@end
