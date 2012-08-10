//
//  INode.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Made an interface for a Node to provide a contract for what methods a Node 
 must have.
 */
@protocol INode <NSObject>

-(id)init;
-(id)initWithValue:(id)value;
-(NSString*)description;

@end
