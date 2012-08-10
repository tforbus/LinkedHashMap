//
//  IList.h
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@protocol IList <NSObject>

-(Node*)insert:(id)value;
-(Node*)removeNode:(Node*)value;
-(NSString*)description;
-(NSArray*)asArray;

@end

