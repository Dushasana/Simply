//
//  ShoppingList.m
//  Simply
//
//  Created by Dushasana on 03/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "ShoppingList.h"

@implementation ShoppingList

@synthesize title;
@synthesize notes;
@synthesize createdDate;
@synthesize sortId;
@synthesize items;
@synthesize status;
@synthesize totalItems;
@synthesize completedItems;

//sample init functions
-(instancetype)initWithTitle:(NSString * )title_ status:(NSString *)status_{
    self = [super init];
    if (self) {
        self.title = title_;
        self.status =status_;
    }
    
    return self;
    
}

@end
