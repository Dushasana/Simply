//
//  AddNewListViewController.h
//  Simply
//
//  Created by Dushasana on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AddNewListViewController;
@protocol addNewListViewControllerDelegate <NSObject>
- (void)didCompletedActionsInController:( AddNewListViewController *)controller;
@end


@interface AddNewListViewController : UIViewController

@property (nonatomic,strong)id<addNewListViewControllerDelegate>delegate;
- (IBAction)cancelButtonClicked:(id)sender;
- (IBAction)doneButtonClicked:(id)sender;

@end
