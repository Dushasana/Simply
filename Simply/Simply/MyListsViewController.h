//
//  MyListsViewController.h
//  Simply
//
//  Created by Dushasana on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddNewListViewController.h"
#import "SettingsViewController.h"
#import "ListTableCell.h"
#import "ShoppingList.h"
@interface MyListsViewController : UIViewController<addNewListViewControllerDelegate,settingsViewControllerDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSMutableArray * Lists;

@end
