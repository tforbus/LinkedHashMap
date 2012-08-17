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

        [lhm removeValueWithKey:[NSNumber numberWithInt:4]];
        NSLog(@"all values::: %@", [lhm allValues]);
        NSLog(@"all keys::: %@", [lhm allKeys]);
        
        [lhm setValue:@"MODIFIED" forKey:[NSNumber numberWithInt:2]];
        NSLog(@"all values %@", [lhm allValues]);
    }
    return 0;
}

