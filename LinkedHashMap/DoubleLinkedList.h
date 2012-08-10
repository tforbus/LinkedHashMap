//
//  DoubleLinkedList.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IList.h"
#import "Node.h"
#import "DListNode.h"

@interface DoubleLinkedList : NSObject <IList>
{
    @private
    DListNode* head;
    DListNode* tail;
}

-(id)init;


// Methods from the IList protocol
-(Node*)insert:(id)value;           // Inserts a node | node.nodeValue = value
-(Node*)remove:(id)value;           // Deletes a node | node.nodeValue == value
-(Node*)removeNode:(Node*)node;
-(NSString*)description;
-(NSArray*)asArray;
@end
