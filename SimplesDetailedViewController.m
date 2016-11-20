//
//  SimplesDetailedViewController.m
//  SidebarDemo
//
//  Created by sushma on 14/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//
#import <AudioToolbox/AudioToolbox.h>
#import "SimplesDetailedViewController.h"
#import "AppController.h"
#import <AVFoundation/AVFoundation.h>

@interface SimplesDetailedViewController ()
@property (strong, nonatomic) IBOutlet UILabel *singleLetter;
- (IBAction)spanishButtonClicked:(id)sender;
- (IBAction)prevClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *detailedLetter;
- (IBAction)nextClicked:(id)sender;
@property(nonatomic,strong)AppController *appController;
@property(nonatomic)NSInteger index;
@property (strong,nonatomic) NSMutableArray *simplesArray;
@property(strong,nonatomic) AVAudioPlayer* audioPlayer;

@end

@implementation SimplesDetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];


    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back"
                                                                   style:UIBarButtonItemStylePlain
                                                                  target:self
                                                                  action:@selector(backAction)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    
    self.appController = [AppController sharedManager];
    
    
    //self.appController.marker = self.appController.clickedString;
    
    
    
    if([self.appController.clickedString isEqualToString:@"A"]){
        
       self.simplesArray = [NSMutableArray arrayWithObjects:@"ai",@"au",@"al",@"an",@"as",@"am",@"ay",@"ar", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"B"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ba",@"be",@"bi",@"bo",@"bu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"C"]){
    
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ca",@"ce",@"ci",@"co",@"cu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"D"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"da",@"de",@"di",@"do",@"du", nil];
        
    } else if ([self.appController.clickedString isEqualToString:@"E"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ei",@"eu",@"el",@"en",@"es",@"em",@"ey",@"er", nil];
        

    }else if ([self.appController.clickedString isEqualToString:@"F"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"fa",@"fe",@"fi",@"fo",@"fu", nil];
    
    }else if ([self.appController.clickedString isEqualToString:@"G"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ga",@"ge",@"gi",@"go",@"gu", nil];
    
    }else if ([self.appController.clickedString isEqualToString:@"H"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ha",@"he",@"hi",@"ho",@"hu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"I"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ia",@"ie",@"io",@"iu",@"il",@"in",@"is",@"im",@"ir", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"J"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ja",@"je",@"ji",@"jo",@"ju", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"K"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ka",@"ke",@"ki",@"ko",@"ku", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"L"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"la",@"le",@"li",@"lo",@"lu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"M"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ma",@"me",@"mi",@"mo",@"mu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"N"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"na",@"ne",@"ni",@"no",@"nu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"Ññ"]){

        self.simplesArray = [NSMutableArray arrayWithObjects:@"ña",@"ñe",@"ñi",@"ño",@"ñu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"O"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"oi",@"ou",@"ol",@"on",@"os",@"om",@"oy",@"or", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"P"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"pa",@"pe",@"pi",@"po",@"pu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"Q"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"qa",@"qe",@"qi",@"qo",@"qu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"R"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ra",@"re",@"ri",@"ro",@"ru", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"S"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"sa",@"se",@"si",@"so",@"su", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"T"]){

        self.simplesArray = [NSMutableArray arrayWithObjects:@"ta",@"te",@"ti",@"to",@"tu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"V"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"va",@"ve",@"vi",@"vo",@"vu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"W"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"wa",@"we",@"wi",@"wo",@"wu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"X"]){
    
        self.simplesArray = [NSMutableArray arrayWithObjects:@"xa",@"xe",@"xi",@"xo",@"xu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"Y"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ya",@"ye",@"yi",@"yo",@"yu", nil];
        
    }else if ([self.appController.clickedString isEqualToString:@"Z"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"ya",@"ye",@"yi",@"yo",@"yu", nil];
        
    }else if([self.appController.clickedString isEqualToString:@"U"]){
        
        
        if(self.appController.isSimples == true){
            
             self.simplesArray = [NSMutableArray arrayWithObjects:@"ua",@"ue",@"ui",@"uo",@"ul",@"un",@"us",@"um",@"uy",@"ur" ,nil];
            
            
        }else if(self.appController.isCompuestos == true){
            
            self.simplesArray = [NSMutableArray arrayWithObjects:@"uai",@"uei",@"uau",nil];
            
        }
        
    }else if([self.appController.clickedString isEqualToString:@"Bl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"blo",@"blu",@"bla",@"ble",@"bli",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Br"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"bra",@"bre",@"bri",@"bro",@"bru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Ch"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"cha",@"che",@"chi",@"cho",@"chu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Cl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"cla",@"cle",@"cli",@"clo",@"clu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Cr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"cra",@"cre",@"cri",@"cro",@"cru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Dr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"dra",@"dre",@"dri",@"dro",@"dru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Fl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"fla",@"fle",@"fli",@"flo",@"flu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Fr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"fra",@"fre",@"fri",@"fro",@"fru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Gl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"gla",@"gle",@"gli",@"glo",@"glu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Gr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"gra",@"gre",@"gri",@"gro",@"gru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Gu"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"gua",@"güe",@"güi",@"guo",@"gue",@"gui",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"I"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"iau",@"iei",@"ioi",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Ll"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"lla",@"lle",@"lli",@"llo",@"llu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Pl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"pla",@"ple",@"pli",@"plo",@"plu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Pr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"pra",@"pre",@"pri",@"pro",@"pru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Qu"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"que",@"qui",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Rr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"rra",@"rre",@"rri",@"rro",@"rru",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Tl"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"tla",@"tle",@"tli",@"tlo",@"tlu",nil];
        
    }else if([self.appController.clickedString isEqualToString:@"Tr"]){
        
        self.simplesArray = [NSMutableArray arrayWithObjects:@"tra",@"tre",@"tri",@"tro",@"tru",nil];
        
    };








    
    
    self.index = 0;
    [self showMethod];
    
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




-(void)showMethod{
    
    if(self.appController.isSimples == true){
    
        self.singleLetter.text = self.appController.clickedString;
    
    }else if(self.appController.isCompuestos == true){
        
        
        NSLog(@"the clieked letter is %@", [self.appController.clickedString lowercaseString]);
        
        
        
        NSString *mergedString = [NSString stringWithFormat:@"%@ %@",self.appController.clickedString, [self.appController.clickedString lowercaseString]];
        
        self.singleLetter.text  = mergedString;

    }
    
    
    
    [self showDetailedLetter];
    
}


-(void)showDetailedLetter{
    
    
    
    self.detailedLetter.text = [self.simplesArray objectAtIndex:self.index];
    self.appController.detailedString = [self.simplesArray objectAtIndex:self.index];
    
    [self soundMethod];
    
}


-(void)soundMethod{
    
    NSString *sounds = [self.simplesArray objectAtIndex:self.index];
    
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:sounds ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
    

}





- (IBAction)spanishButtonClicked:(id)sender {
    
    
    
    [self soundMethod];
    /*NSString *sounds = [self.simplesArray objectAtIndex:self.index];
   
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:sounds ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];*/
    
    
    
}























- (IBAction)prevClicked:(id)sender {
    
    
        
        
        if (self.index == 0) {
            self.index = self.simplesArray.count-1;
        }else {
            self.index --;
        }
        
    
        
        
    [self showDetailedLetter];
    
    
}
- (IBAction)nextClicked:(id)sender {
    
    
    if (self.index == self.simplesArray.count-1) {
        self.index = 0;
    }else {
        self.index ++;
    }
    
    [self showDetailedLetter];
    
}

-(void)backAction{
    [self dismissViewControllerAnimated:YES completion:NO];
}
@end
