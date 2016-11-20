//
//  ViewController.m
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "MainViewController.h"
#import "SWRevealViewController.h"
#import "LettersAndVowelsViewController.h"
#import "SonidosViewController.h"
#import "NumbersViewController.h"
#import "ParablasViewController.h"
#import "SidebarViewController.h"
#import "SWRevealViewController.h"
#import "AppController.h"

@interface MainViewController ()

@property (strong, nonatomic) IBOutlet UIView *lettersView;
@property (strong, nonatomic) IBOutlet UIView *letterCoverView;

@property (strong, nonatomic) IBOutlet UIView *numbersView;
@property (strong, nonatomic) IBOutlet UIView *numbersCoverView;

@property (strong, nonatomic) IBOutlet UIView *vowelsView;
@property (strong, nonatomic) IBOutlet UIView *vowelsCoverView;


@property (strong, nonatomic) IBOutlet UIView *soundsView;
@property (strong, nonatomic) IBOutlet UIView *soundsCoverView;

@property (strong, nonatomic) IBOutlet UIView *wordsView;
@property (strong, nonatomic) IBOutlet UIView *wordsCoverView;

@property (strong, nonatomic) IBOutlet UIView *completeView;

@property (strong, nonatomic) IBOutlet UIView *completeCoverView;

@property(strong,nonatomic)AppController *appController;

- (IBAction)soundsDownClicked:(id)sender;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.appController = [AppController sharedManager];
   
    if(self.revealViewController){
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    }
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
    
    
    SWRevealViewController *revealViewController = self.revealViewController;
    if ( revealViewController )
    {
        UIImage* buttonImage = [UIImage imageNamed:@"ic_drawer.png"];
        UIButton *aButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [aButton setImage:buttonImage forState:UIControlStateNormal];
        aButton.frame = CGRectMake(0.0, 0.0, 20,20);
        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:aButton];
        [aButton addTarget:self.revealViewController action:@selector(revealToggle:) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = backButton;
        
        
        
        

    
    }
    if(!revealViewController){
        NSLog(@"the reveal controller is not zero");
    }
    
     }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0,newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

-(void)openMenu{
    
    [self.sidebarButton setTarget: self.revealViewController];
    [self.sidebarButton setAction: @selector( revealToggle: )];
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
}
- (IBAction)wordsTouchDown:(id)sender {
    
    
    self.appController.isParablas = true;
    self.appController.isSimples = false;
    self.appController.isCompuestos = false;
    
    self.wordsView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.wordsView.layer.borderWidth = 6.0f;
    self.wordsView.backgroundColor = [UIColor redColor];
    self.wordsView.backgroundColor = [UIColor redColor];
}

- (IBAction)numbersTouchDown:(id)sender {
    
    self.numbersView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.numbersView.layer.borderWidth = 6.0f;
    self.numbersView.backgroundColor = [UIColor redColor];
    self.numbersCoverView.backgroundColor = [UIColor redColor];

    
    
    
}
- (IBAction)vowelsTouchDown:(id)sender {
    self.vowelsView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.vowelsView.layer.borderWidth = 6.0f;
    self.vowelsView.backgroundColor = [UIColor redColor];
    self.vowelsView.backgroundColor = [UIColor redColor];
}


- (IBAction)lettersTouchDown:(id)sender {
    
    self.lettersView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.lettersView.layer.borderWidth = 6.0f;
    self.lettersView.backgroundColor = [UIColor redColor];
    self.letterCoverView.backgroundColor = [UIColor redColor];
}
- (IBAction)touchCancel:(id)sender {
    
    self.soundsView.backgroundColor = [UIColor whiteColor];

}



- (IBAction)soundsDownClicked:(id)sender {
    
    self.soundsView.layer.borderColor = [UIColor colorWithRed:0/255.0 green:206.0/255.0 blue:209.0/255.0 alpha:1.0].CGColor;
    self.soundsView.layer.borderWidth = 6.0f;
    self.soundsView.backgroundColor = [UIColor redColor];
    self.soundsCoverView.backgroundColor = [UIColor redColor];
    
}
@end
