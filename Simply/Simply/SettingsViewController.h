//
//  SettingsViewController.h
//  Simply
//
//  Created by coder-prince on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SettingsViewController;
@protocol settingsViewControllerDelegate <NSObject>
- (void)didCompletedActionsInSettingsController:( SettingsViewController *)controller;
@end

@interface SettingsViewController : UIViewController
@property (nonatomic,strong)id<settingsViewControllerDelegate>delegate;
- (IBAction)cancelButtonClicked:(id)sender;
- (IBAction)doneButtonClicked:(id)sender;

@end
