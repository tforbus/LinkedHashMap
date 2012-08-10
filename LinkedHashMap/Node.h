//
//  Node.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.

#import <Foundation/Foundation.h>
#import "INode.h"

@interface Node : NSObject <INode>

// At a minimum, all nodes have a node value and some init methods.
@property(nonatomic, strong) id nodeValue;

-(id)init;
-(id)initWithValue:value;
-(NSString*)description;

@end
