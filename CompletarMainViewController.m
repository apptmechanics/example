//
//  CompletarMainViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 30/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "CompletarMainViewController.h"
#import "DetailedSonidosViewController.h"
#import "DetailedSillabusViewController.h"
#import "DetailedPalabrasViewController.h"
#import "SimplesAndWordsCollectionViewController.h"
#import "AppController.h"

@interface CompletarMainViewController ()
- (IBAction)sounidosButtonClicked:(id)sender;
- (IBAction)silabasButtonClicked:(id)sender;
- (IBAction)palabras:(id)sender;
@property(nonatomic,strong)AppController *appcontroller;

@end

@implementation CompletarMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.appcontroller = [AppController sharedManager];
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

- (IBAction)sounidosButtonClicked:(id)sender {
    
    
    self.appcontroller.isDetailedSounidos = true;
    self.appcontroller.isDetailedSilabas = false;
    self.appcontroller.isDetailedPalabras = false;
    
    SimplesAndWordsCollectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesAndWordsCollectionViewController"];
    [self.navigationController pushViewController:vc animated:YES];

    
    
}

- (IBAction)silabasButtonClicked:(id)sender {
    
    self.appcontroller.isDetailedSilabas = true;
     self.appcontroller.isDetailedSounidos = false;
     self.appcontroller.isDetailedPalabras = false;
    
    SimplesAndWordsCollectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesAndWordsCollectionViewController"];
    [self.navigationController pushViewController:vc animated:YES];

}

- (IBAction)palabras:(id)sender {
    
    self.appcontroller.isDetailedPalabras = true;
    
    self.appcontroller.isDetailedSilabas = false;
    self.appcontroller.isDetailedSounidos = false;

    SimplesAndWordsCollectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesAndWordsCollectionViewController"];
    [self.navigationController pushViewController:vc animated:YES];

}
@end
