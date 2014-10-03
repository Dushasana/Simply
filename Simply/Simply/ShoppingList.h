//
//  ShoppingList.h
//  Simply
//
//  Created by Akhil MS on 03/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShoppingList : NSObject

@property (nonatomic,strong) NSString * title;
@property (nonatomic,strong) NSString * notes ;
@property (nonatomic,strong) NSDate * createdDate;
@property (nonatomic,readwrite) int  sortId;
@property (nonatomic,strong) NSArray * items;
@property (nonatomic,strong) NSString * status;
@property (nonatomic,readwrite) int totalItems;
@property (nonatomic,readwrite) int completedItems;

-(instancetype)initWithTitle:(NSString * )title_ status:(NSString *)status_;
@end
