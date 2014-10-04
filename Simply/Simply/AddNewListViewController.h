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
@property (weak, nonatomic) IBOutlet UITextField *listTitle;

@property (weak, nonatomic) IBOutlet UITextView *notes;
@property (nonatomic,strong)id<addNewListViewControllerDelegate>delegate;
- (IBAction)cancelButtonClicked:(id)sender;
- (IBAction)saveButtonClicked:(id)sender;

@end
