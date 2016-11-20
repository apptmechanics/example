//
//  LettersAndVowelsViewController.m
//  SidebarDemo
//
//  Created by Aiswarya kodali on 6/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "LettersAndVowelsViewController.h"
#import "Alphabet.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "SWRevealViewController.h"

@interface LettersAndVowelsViewController ()
@property (strong, nonatomic) IBOutlet UILabel *letter;
- (IBAction)englishButtonClicked:(id)sender;
- (IBAction)nextButtonClicked:(id)sender;
- (IBAction)prevButtonCliked:(id)sender;

- (IBAction)spanishButtonClicked:(id)sender;
@property(strong,nonatomic)NSMutableArray *alphabetArray;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property(nonatomic) BOOL isLetter;
@property(nonatomic) BOOL isVowel;
@property(nonatomic)NSInteger index;


@end

@implementation LettersAndVowelsViewController{
     //AVAudioPlayer *_audioPlayer;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
   // [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
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
    
    
    
    
    
    
    //intialising the array
    self.alphabetArray  = [[NSMutableArray alloc]init];
    
    
    

    // Do any additional setup after loading the view.
}



-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    self.isLetter = [userDefaults boolForKey:@"letters"];
    self.isVowel =[userDefaults boolForKey:@"vowels"];
    
    
    
    
    
    
    
    if(self.isLetter == YES){
        
        
        
        //creating the object
        Alphabet *alphabetA = [[Alphabet alloc]init];
        alphabetA.letters = @"Aa";
        alphabetA.spanishsounds= @"a";
        alphabetA.englishsounds = @"a_en";
        [self.alphabetArray addObject:alphabetA];//adding object to array
        
        Alphabet *alphabetB = [[Alphabet alloc]init];
        alphabetB.letters = @"Bb";
        alphabetB.spanishsounds= @"b";
        alphabetB.englishsounds = @"b_en";
        [self.alphabetArray addObject:alphabetB];
        
        Alphabet *alphabetC = [[Alphabet alloc]init];
        alphabetC.letters = @"Cc";
        alphabetC.spanishsounds= @"c";
        alphabetC.englishsounds = @"c_en";
        [self.alphabetArray addObject:alphabetC];
        
        Alphabet *alphabetD = [[Alphabet alloc]init];
        alphabetD.letters = @"Dd";
        alphabetD.spanishsounds= @"d";
        alphabetD.englishsounds = @"d_en";
        [self.alphabetArray addObject:alphabetD];
        
        Alphabet *alphabetE = [[Alphabet alloc]init];
        alphabetE.letters = @"Ee";
        alphabetE.spanishsounds= @"e";
        alphabetE.englishsounds = @"e_en";
        [self.alphabetArray addObject:alphabetE];
        
        
        Alphabet *alphabetF = [[Alphabet alloc]init];
        alphabetF.letters = @"Ff";
        alphabetF.spanishsounds= @"f";
        alphabetF.englishsounds = @"f_en";
        [self.alphabetArray addObject:alphabetF];
        
        Alphabet *alphabetG = [[Alphabet alloc]init];
        alphabetG.letters = @"Gg";
        alphabetG.spanishsounds= @"g";
        alphabetG.englishsounds = @"g_en";
        [self.alphabetArray addObject:alphabetG];
        
        Alphabet *alphabetH = [[Alphabet alloc]init];
        alphabetH.letters = @"Hh";
        alphabetH.spanishsounds= @"h";
        alphabetH.englishsounds = @"h_en";
        [self.alphabetArray addObject:alphabetH];
        
        Alphabet *alphabetI = [[Alphabet alloc]init];
        alphabetI.letters = @"Ii";
        alphabetI.spanishsounds= @"i";
        alphabetI.englishsounds = @"i_en";
        [self.alphabetArray addObject:alphabetI];
        
        Alphabet *alphabetJ = [[Alphabet alloc]init];
        alphabetJ.letters = @"Jj";
        alphabetJ.spanishsounds= @"j";
        alphabetJ.englishsounds = @"j_en";
        [self.alphabetArray addObject:alphabetJ];
        
        Alphabet *alphabetK = [[Alphabet alloc]init];
        alphabetK.letters = @"Kk";
        alphabetK.spanishsounds= @"k";
        alphabetK.englishsounds = @"k_en";
        [self.alphabetArray addObject:alphabetK];
        
        Alphabet *alphabetL = [[Alphabet alloc]init];
        alphabetL.letters = @"Ll";
        alphabetL.spanishsounds= @"l";
        alphabetL.englishsounds = @"l_en";
        [self.alphabetArray addObject:alphabetL];
        
        Alphabet *alphabetM = [[Alphabet alloc]init];
        alphabetM.letters = @"Mm";
        alphabetM.spanishsounds= @"m";
        alphabetM.englishsounds = @"m_en";
        [self.alphabetArray addObject:alphabetM];
        
        Alphabet *alphabetN = [[Alphabet alloc]init];
        alphabetN.letters = @"Nn";
        alphabetN.spanishsounds= @"n";
        alphabetN.englishsounds = @"n_en";
        [self.alphabetArray addObject:alphabetN];
        
        Alphabet *alphabetn = [[Alphabet alloc]init];
        alphabetn.letters = @"Ññ";
        alphabetn.spanishsounds= @"n";
        alphabetn.englishsounds = @"abc";
        [self.alphabetArray addObject:alphabetn];
        
        Alphabet *alphabetO = [[Alphabet alloc]init];
        alphabetO.letters = @"Oo";
        alphabetO.spanishsounds= @"o";
        alphabetO.englishsounds = @"o_en";
        [self.alphabetArray addObject:alphabetO];
        
        Alphabet *alphabetP = [[Alphabet alloc]init];
        alphabetP.letters = @"Pp";
        alphabetP.spanishsounds= @"p";
        alphabetP.englishsounds = @"p_en";
        [self.alphabetArray addObject:alphabetP];
        
        Alphabet *alphabetQ = [[Alphabet alloc]init];
        alphabetQ.letters = @"Qq";
        alphabetQ.spanishsounds= @"q";
        alphabetQ.englishsounds = @"q_en";
        [self.alphabetArray addObject:alphabetQ];
        
        Alphabet *alphabetR = [[Alphabet alloc]init];
        alphabetR.letters = @"Rr";
        alphabetR.spanishsounds= @"r";
        alphabetR.englishsounds = @"r_en";
        [self.alphabetArray addObject:alphabetR];
        
        Alphabet *alphabetS = [[Alphabet alloc]init];
        alphabetS.letters = @"Ss";
        alphabetS.spanishsounds= @"s";
        alphabetS.englishsounds = @"s_en";
        [self.alphabetArray addObject:alphabetS];
        
        Alphabet *alphabetT = [[Alphabet alloc]init];
        alphabetT.letters = @"Tt";
        alphabetT.spanishsounds= @"t";
        alphabetT.englishsounds = @"t_en";
        [self.alphabetArray addObject:alphabetT];
        
        Alphabet *alphabetU = [[Alphabet alloc]init];
        alphabetU.letters = @"Uu";
        alphabetU.spanishsounds= @"u";
        alphabetU.englishsounds = @"u_en";
        [self.alphabetArray addObject:alphabetU];
        
        Alphabet *alphabetV = [[Alphabet alloc]init];
        alphabetV.letters = @"Vv";
        alphabetV.spanishsounds= @"v";
        alphabetV.englishsounds = @"v_en";
        [self.alphabetArray addObject:alphabetV];
        
        Alphabet *alphabetW = [[Alphabet alloc]init];
        alphabetW.letters = @"Ww";
        alphabetW.spanishsounds= @"w";
        alphabetW.englishsounds = @"w_en";
        [self.alphabetArray addObject:alphabetW];
        
        Alphabet *alphabetX = [[Alphabet alloc]init];
        alphabetX.letters = @"Xx";
        alphabetX.spanishsounds= @"x";
        alphabetX.englishsounds = @"x_en";
        [self.alphabetArray addObject:alphabetX];
        
        Alphabet *alphabetY = [[Alphabet alloc]init];
        alphabetY.letters = @"Yy";
        alphabetY.spanishsounds= @"y";
        alphabetY.englishsounds = @"y_en";
        [self.alphabetArray addObject:alphabetY];
        
        Alphabet *alphabetZ = [[Alphabet alloc]init];
        alphabetZ.letters = @"Zz";
        alphabetZ.spanishsounds= @"z";
        alphabetZ.englishsounds = @"z_en";
        [self.alphabetArray addObject:alphabetZ];
        
    }else {
        
        
        
        Alphabet *alphabetA = [[Alphabet alloc]init];
        alphabetA.letters = @"Aa";
        alphabetA.spanishsounds= @"a";
        alphabetA.englishsounds = @"a_en";
        [self.alphabetArray addObject:alphabetA];
        
        Alphabet *alphabetE = [[Alphabet alloc]init];
        alphabetE.letters = @"Ee";
        alphabetE.spanishsounds= @"e";
        alphabetE.englishsounds = @"e_en";
        [self.alphabetArray addObject:alphabetE];
        
        Alphabet *alphabetI = [[Alphabet alloc]init];
        alphabetI.letters = @"Ii";
        alphabetI.spanishsounds= @"i";
        alphabetI.englishsounds = @"i_en";
        [self.alphabetArray addObject:alphabetI];
        
        
        Alphabet *alphabetO = [[Alphabet alloc]init];
        alphabetO.letters = @"Oo";
        alphabetO.spanishsounds= @"o";
        alphabetO.englishsounds = @"o_en";
        [self.alphabetArray addObject:alphabetO];
        
        
        Alphabet *alphabetU = [[Alphabet alloc]init];
        alphabetU.letters = @"Uu";
        alphabetU.spanishsounds= @"u";
        alphabetU.englishsounds = @"u_en";
        [self.alphabetArray addObject:alphabetU];
        
    }
    
    
    self.index = 0;
    [self showMethod];
    
    

}








-(void)showMethod{
    
    
    Alphabet *alphabet = [self.alphabetArray objectAtIndex:self.index];
    
    self.letter.text = alphabet.letters;
    
    
    
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

- (IBAction)englishButtonClicked:(id)sender {
    
    
    

    if(self.index != 14){
        Alphabet *alphabet = [self.alphabetArray objectAtIndex:self.index];
        NSString *englishSound = alphabet.englishsounds;
      
        NSString *audioPath = [[NSBundle mainBundle] pathForResource:englishSound ofType:@"mp3"];
        //NSLog(@"%@", audioPath);
        NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
        //NSLog(@"%@", audioURL);
        self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
        [self.audioPlayer play];
    }

}



void systemAudioCallback(SystemSoundID soundId, void *clientData)
{
    NSLog(@"System sound finished playing!");
}
- (IBAction)nextButtonClicked:(id)sender {
    
    if(self.isLetter == YES){
      
    
    
        if (self.index == 26) {
            self.index = 0;
        }else {
            self.index ++;
        }
    
    
}else{
    if (self.index == 4) {
        self.index = 0;
    }else {
        self.index ++;
    }
    
}

    [self showMethod];
    
}

- (IBAction)prevButtonCliked:(id)sender {
    
    if (self.isLetter == YES) {
        

        if (self.index == 0) {
            self.index = 26;
        }else {
            self.index --;
        }

    }else{
        
        if (self.index == 0) {
            self.index = 4;
        }else {
            self.index --;
        }
        
        
    }
       [self showMethod];
}

- (IBAction)spanishButtonClicked:(id)sender {
    
   Alphabet *alphabet = [self.alphabetArray objectAtIndex:self.index];
    NSString *spanishSound = alphabet.spanishsounds;
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:spanishSound ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
    

    
}
@end
