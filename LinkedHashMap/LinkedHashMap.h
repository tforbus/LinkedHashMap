//
//  LinkedHashMap.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//

#import <Foundation/Foundation.h>
#import "DoubleLinkedList.h"
#import "Node.h"

@interface LinkedHashMap : NSObject
{
    @private
    
    // key -> value
    // The actual mapping. No order is preserved here.
    // Constant time insertion and removal.
    NSMutableDictionary* keyValueMap;
    
    // Node[value]
    // These preserve order of insertion for both key and value.
    // By nature, this has constant time insertion.
    // When a key/value pair is added to the keyValueMap, the items are added to 
    // their respective lists.
    DoubleLinkedList* keyList;
    DoubleLinkedList* valueList;
    
    // key -> Node[value]
    // Maps a key to a Node in a valueList.
    // This enables Nodes in a DoubleLinkedList to be found in constant time, 
    // which gives constant time removal for a DoubleLinkedList.
    NSMutableDictionary* keyAddressMap;  
}


-(id)init;
-(void)insertValue:(id)value withKey:(id)key;
-(void)removeValueWithKey:(id)key;
-(id)valueForKey:(id)key;
-(NSArray*)allKeys;
-(NSArray*)allValues;

@end
