//
//  MyListsViewController.m
//  Simply
//
//  Created by Dushanana on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "MyListsViewController.h"
#import "SettingsViewController.h"
#import "DataStore.h"
@interface MyListsViewController ()

@end

@implementation MyListsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  //  [self.listTableView registerClass:NSClassFromString(@"ListTableCell") forCellReuseIdentifier:@"ListCell"];
    // Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated{
    
    self.shoppingLists = [[DataStore store]listItems];
    [self.listTableView reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didCompletedActionsInController:( AddNewListViewController *)controller{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)didCompletedActionsInSettingsController:( SettingsViewController *)controller{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)setUpNavBar{
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if([segue.identifier isEqualToString:@"AddList"]){
        
         UINavigationController *navigationController = segue.destinationViewController;
        
        AddNewListViewController * controller = [navigationController viewControllers][0];
        controller.delegate=self;
    }
    if ([segue.identifier isEqualToString:@"settingsView"]) {
        UINavigationController *navigationController = segue.destinationViewController;
        SettingsViewController *controller = [navigationController viewControllers][0];
        controller.delegate = self;
        
    }
}

#pragma mark- delegates tableview


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    // Return the number of rows in the section.
    return self.shoppingLists.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ListTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell" forIndexPath:indexPath];
    
    ShoppingList * currentList = (ShoppingList *)(self.shoppingLists)[indexPath.row];
    cell.listName.text = currentList.title;
   // cell.subtitle.text = player.game;
    //cell.imageView.image =[self imageForRating:player.rating];
    return cell;
}



@end
