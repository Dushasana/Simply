//
//  DataStore.m
//  Simply
//
//  Created by Akhil MS on 04/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "DataStore.h"

@implementation DataStore

+ (id)store {
    static DataStore * store = nil;
    @synchronized(self) {
        if (store == nil)
            store = [[self alloc] init];
    }
    return store;
}
-(id)init{
    self = [super init];
    if(self){
        self.listItems = [[NSMutableArray alloc]init];
    }
    
    return self;
}
@end
