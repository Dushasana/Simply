//
//  MyListsViewController.m
//  Simply
//
//  Created by Dushanana on 02/10/14.
//  Copyright (c) 2014 Simply. All rights reserved.
//

#import "MyListsViewController.h"

@interface MyListsViewController ()

@end

@implementation MyListsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didCompletedActionsInController:( AddNewListViewController *)controller{
    
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
}


@end
