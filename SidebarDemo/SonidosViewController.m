//
//  SonidosViewController.m
//  SidebarDemo
//
//  Created by sushma on 14/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "SonidosViewController.h"
#import "AppController.h"
#import "SimplesAndWordsCollectionViewController.h"

@interface SonidosViewController ()
- (IBAction)spanishButtonClicked:(id)sender;
- (IBAction)simplesButtonClicked:(id)sender;
- (IBAction)computosButtonClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *simplesButton;
- (IBAction)simplesTouchdown:(id)sender;

@property(nonatomic,strong)AppController *appController;


////// simples button simples

@property (weak, nonatomic) IBOutlet UIView *simplesBackgroundView;

@property (weak, nonatomic) IBOutlet UIView *labelCoverView;


/// computes button


@property (weak, nonatomic) IBOutlet UIView *computosBackgroundView;


@property (weak, nonatomic) IBOutlet UIView *labelComputosBackgroundView;


@end

@implementation SonidosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIImageView* imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    
    UIView* titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 110, 30)];
    imageView.frame = CGRectMake(0, 0, 30, 30);
    
    UILabel* lbNavTitle = [[UILabel alloc] initWithFrame:CGRectMake(titleView.frame.origin.x+30,0,80,30)];
    lbNavTitle.textAlignment = UITextAlignmentLeft;
    lbNavTitle.textColor = [UIColor whiteColor];
    lbNavTitle.text = NSLocalizedString(@"MiABC",@"");
    
    
    [titleView addSubview:imageView];
    [titleView addSubview:lbNavTitle];
    
    self.navigationItem.titleView = titleView;
    
    self.appController = [AppController sharedManager];
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


- (IBAction)spanishButtonClicked:(id)sender {
}

- (IBAction)simplesButtonClicked:(id)sender {
    
    self.simplesBackgroundView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.simplesBackgroundView.layer.borderWidth = 0.0f;
    
    self.simplesBackgroundView.backgroundColor = [UIColor whiteColor];
    
    self.labelCoverView.backgroundColor = [UIColor clearColor];
    
   
    self.appController.isSimples = YES;
    self.appController.isCompuestos = NO;
    
    
    SimplesAndWordsCollectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesAndWordsCollectionViewController"];
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (IBAction)computosButtonClicked:(id)sender {
    
    
    
    self.computosBackgroundView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.computosBackgroundView.layer.borderWidth = 0.0f;
    
    self.computosBackgroundView.backgroundColor = [UIColor whiteColor];
    
    self.labelComputosBackgroundView.backgroundColor = [UIColor clearColor];
    
    self.appController.isSimples = NO;
    self.appController.isCompuestos = YES;
    
    
    SimplesAndWordsCollectionViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesAndWordsCollectionViewController"];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)computos:(id)sender {//TOUCH DOWN
    
    
    self.computosBackgroundView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.computosBackgroundView.layer.borderWidth = 6.0f;
    

    self.computosBackgroundView.backgroundColor = [UIColor redColor];
    
    self.labelComputosBackgroundView.backgroundColor = [UIColor redColor];
}



- (IBAction)simplesTouchdown:(id)sender {
    
    
    
    self.simplesBackgroundView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.simplesBackgroundView.layer.borderWidth = 6.0f;

    
     self.simplesBackgroundView.backgroundColor = [UIColor redColor];
    
    self.labelCoverView.backgroundColor = [UIColor redColor];
    
}
@end
