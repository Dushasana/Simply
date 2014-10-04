//
//  DataStore.h
//  Simply
//
//  Created by Akhil MS on 04/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataStore : NSObject

@property (nonatomic,strong) NSMutableArray * listItems;

+(id)store;

@end
