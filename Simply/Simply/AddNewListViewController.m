//
//  AddNewListViewController.m
//  Simply
//
//  Created by Dushasana on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "AddNewListViewController.h"
#import "ShoppingList.h"
#import "DataStore.h"

@interface AddNewListViewController ()

@end

@implementation AddNewListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)cancelButtonClicked:(id)sender{
    
    [self.delegate didCompletedActionsInController:self];
}
- (IBAction)saveButtonClicked:(id)sender{
    if(self.listTitle.text.length >0){
    ShoppingList * list = [[ShoppingList alloc]init];
    list.title = self.listTitle.text;
    list.notes = self.notes.text;
    [[[DataStore store] listItems] addObject:list];
   [ self.delegate didCompletedActionsInController:self];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
