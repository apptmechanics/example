//
//  CustomViewController.m
//  SidebarDemo
//
//  Created by sushma on 28/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "CustomViewController.h"
#import "SWRevealViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 1 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
       
        
        
        UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"MainStoryboard"
                                                                 bundle: nil];
        
        SWRevealViewController *controller = (SWRevealViewController*)[mainStoryboard
                                                                                       instantiateViewControllerWithIdentifier: @"SWRevealViewController"];
        
        [self presentViewController:controller animated:NO
                         completion:nil];
        
        
        
        
    });
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
