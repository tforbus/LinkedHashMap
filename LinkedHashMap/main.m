//
//  main.m
//  LinkedHashMap
//
//  Created by Tristin Forbus on 8/10/12.

#import <Foundation/Foundation.h>
#import "LinkedHashMap.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        LinkedHashMap* lhm = [[LinkedHashMap alloc] init];
        [lhm insertValue:@"Value___2" withKey:[NSNumber numberWithInt:2]];
        [lhm insertValue:@"Value___4" withKey:[NSNumber numberWithInt:4]];
        [lhm insertValue:@"Value___8" withKey:[NSNumber numberWithInt:8]];
        
        NSLog(@"all keys::: %@", [lhm allKeys]);
    }
    return 0;
}

