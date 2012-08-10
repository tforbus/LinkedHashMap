//
//  KVDoubleLinkedList.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DoubleLinkedList.h"
#import "KeyValueNode.h"

@interface KVDoubleLinkedList : NSObject <IList>
{
    @private
    KeyValueNode* head;
    KeyValueNode* tail;
}

-(id)init;
-(KeyValueNode*)insert:(id)value withKey:(id)key;

// Methods from the IList protocol
-(KeyValueNode*)insert:(id)value;
-(KeyValueNode*)removeNode:(Node*)node;
-(NSString*)description;
-(NSArray*)asArray;

// extensions
-(NSArray*)asKeyArray;
-(NSArray*)asValueArray;

@end
