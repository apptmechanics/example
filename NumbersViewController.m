//
//  NumbersViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 4/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "NumbersViewController.h"
#import "Number.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface NumbersViewController ()

@property (strong, nonatomic) IBOutlet UILabel *spanishLetter;
@property (strong, nonatomic) IBOutlet UILabel *englishLetter;
@property (strong, nonatomic) IBOutlet UILabel *englishWord;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic) IBOutlet UIImageView *numImage;


@property (weak, nonatomic) IBOutlet UILabel *spanishWord;

@property(nonatomic)NSInteger index;
@property (strong,nonatomic) NSMutableArray *numberArray;
@property(strong,nonatomic) NSMutableArray *spanishNumbers;

- (IBAction)previousButtonClicked:(id)sender;

- (IBAction)engButtonClicked:(id)sender;
- (IBAction)nextButtonClicked:(id)sender;

- (IBAction)spanishButtonClicked:(id)sender;


@end

@implementation NumbersViewController

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
    
    // Do any additional setup after loading the view.
    self.numberArray = [[NSMutableArray alloc]init ];
    
    
    [self spanishWords];
    
    Number *number0 = [[Number alloc]init];
    number0.englishLetter = @"Zz";
    number0.spanishLetter = @"Cc";
    number0.englishLabel = @"Zero";
    number0.spanishSound= @"cero";
    number0.englishSound = @"zero";
    number0.imageLabel = @"cero.png";
    [self.numberArray addObject:number0];//adding object to array
    

    Number *number1 = [[Number alloc]init];
    number1.englishLetter = @"Oo";
    number1.spanishLetter = @"Uu";
    number1.englishLabel = @"One";
    number1.spanishSound= @"uno";
    number1.englishSound = @"one";
    number1.imageLabel = @"uno.png";
    [self.numberArray addObject:number1];
    
    Number *number2 = [[Number alloc]init];
    number2.englishLetter = @"Tt";
    number2.spanishLetter = @"Dd";
    number2.englishLabel = @"Two";
    number2.spanishSound= @"dos";
    number2.englishSound = @"two";
    number2.imageLabel = @"dos.png";
    [self.numberArray addObject:number2];
    
    Number *number3 = [[Number alloc]init];
    number3.englishLetter = @"Tt";
    number3.spanishLetter = @"Tt";
    number3.englishLabel = @"Three";
    number3.spanishSound= @"tres";
    number3.englishSound = @"three";
    number3.imageLabel = @"tres.png";
    [self.numberArray addObject:number3];
    
    Number *number4 = [[Number alloc]init];
    number4.englishLetter = @"Ff";
    number4.spanishLetter = @"Cc";
    number4.englishLabel = @"Four";
    number4.spanishSound= @"cuatro";
    number4.englishSound = @"four";
    number4.imageLabel = @"cuatro.png";
    [self.numberArray addObject:number4];
    
    Number *number5 = [[Number alloc]init];
    number5.englishLetter = @"Ff";
    number5.spanishLetter = @"Cc";
    number5.englishLabel = @"Five";
    number5.spanishSound= @"cinco";
    number5.englishSound = @"five";
    number5.imageLabel = @"cinco.png";
    [self.numberArray addObject:number5];
    
    Number *number6 = [[Number alloc]init];
    number6.englishLetter = @"Ss";
    number6.spanishLetter = @"Ss";
    number6.englishLabel = @"Six";
    number6.spanishSound= @"seis";
    number6.englishSound = @"six";
    number6.imageLabel = @"seis.png";
    [self.numberArray addObject:number6];
    
    Number *number7 = [[Number alloc]init];
    number7.englishLetter = @"Ss";
    number7.spanishLetter = @"Ss";
    number7.englishLabel = @"Seven";
    number7.spanishSound= @"siete";
    number7.englishSound = @"seven";
    number7.imageLabel = @"siete.png";
    [self.numberArray addObject:number7];
    
    Number *number8 = [[Number alloc]init];
    number8.englishLetter = @"Ee";
    number8.spanishLetter = @"Oo";
    number8.englishLabel = @"Eight";
    number8.spanishSound= @"ocho";
    number8.englishSound = @"eight";
    number8.imageLabel = @"ocho.png";
    [self.numberArray addObject:number8];
    
    
    Number *number9 = [[Number alloc]init];
    number9.englishLetter = @"Nn";
    number9.spanishLetter = @"Nn";
    number9.englishLabel = @"Nine";
    number9.spanishSound= @"nueve";
    number9.englishSound = @"nine";
    number9.imageLabel = @"nueve.png";
    [self.numberArray addObject:number9];
    
    Number *number10 = [[Number alloc]init];
    number10.englishLetter = @"Tt";
    number10.spanishLetter = @"Dd";
    number10.englishLabel = @"Ten";
    number10.spanishSound= @"diez";
    number10.englishSound = @"ten";
    number10.imageLabel = @"diez.png";
    [self.numberArray addObject:number10];
    
    Number *number11 = [[Number alloc]init];
    number11.englishLetter = @"Ee";
    number11.spanishLetter = @"Oo";
    number11.englishLabel = @"Eleven";
    number11.spanishSound= @"once";
    number11.englishSound = @"eleven";
    number11.imageLabel = @"once.png";
    [self.numberArray addObject:number11];
    
    Number *number12 = [[Number alloc]init];
    number12.englishLetter = @"Tt";
    number12.spanishLetter = @"Dd";
    number12.englishLabel = @"Twelve";
    number12.spanishSound= @"doce";
    number12.englishSound = @"twelve";
    number12.imageLabel = @"doce.png";
    [self.numberArray addObject:number12];
    
    Number *number13 = [[Number alloc]init];
    number13.englishLetter = @"Tt";
    number13.spanishLetter = @"Tt";
    number13.englishLabel = @"Thirteen";
    number13.spanishSound= @"trece";
    number13.englishSound = @"thirteen";
    number13.imageLabel = @"trece.png";
    [self.numberArray addObject:number13];
    
    Number *number14 = [[Number alloc]init];
    number14.englishLetter = @"Ff";
    number14.spanishLetter = @"Cc";
    number14.englishLabel = @"Fourteen";
    number14.spanishSound= @"catorce";
    number14.englishSound = @"fourteen";
    number14.imageLabel = @"catorce.png";
    [self.numberArray addObject:number14];
    
    Number *number15 = [[Number alloc]init];
    number15.englishLetter = @"Ff";
    number15.spanishLetter = @"Qq";
    number15.englishLabel = @"Fifteen";
    number15.spanishSound= @"quince";
    number15.englishSound = @"fifteen";
    number15.imageLabel = @"quince.png";
    [self.numberArray addObject:number15];
    
    Number *number16 = [[Number alloc]init];
    number16.englishLetter = @"Ss";
    number16.spanishLetter = @"Dd";
    number16.englishLabel = @"Sixteen";
    number16.spanishSound= @"dieciseis";
    number16.englishSound = @"sixteen";
    number16.imageLabel = @"dieciseis.png";
    [self.numberArray addObject:number16];
    
    Number *number17 = [[Number alloc]init];
    number17.englishLetter = @"Ss";
    number17.spanishLetter = @"Dd";
    number17.englishLabel = @"Seventeen";
    number17.spanishSound= @"diecisiete";
    number17.englishSound = @"seventeen";
    number17.imageLabel = @"diecisiete.png";
    [self.numberArray addObject:number17];
    
    Number *number18 = [[Number alloc]init];
    number18.englishLetter = @"Ee";
    number18.spanishLetter = @"Dd";
    number18.englishLabel = @"Eighteen";
    number18.spanishSound= @"dieciocho";
    number18.englishSound = @"eighteen";
    number18.imageLabel = @"dieciocho.png";
    [self.numberArray addObject:number18];
    
    Number *number19 = [[Number alloc]init];
    number19.englishLetter = @"Nn";
    number19.spanishLetter = @"Dd";
    number19.englishLabel = @"Ninteen";
    number19.spanishSound= @"diecinueve";
    number19.englishSound = @"nineteen";
    number19.imageLabel = @"diecinueve.png";
    [self.numberArray addObject:number19];
    
    Number *number20 = [[Number alloc]init];
    number20.englishLetter = @"Tt";
    number20.spanishLetter = @"Vv";
    number20.englishLabel = @"Twenty";
    number20.spanishSound= @"veinte";
    number20.englishSound = @"twenty";
    number20.imageLabel = @"veinte.png";
    [self.numberArray addObject:number20];
    
    
    self.index = 0;
    [self showMethod];
    
  

}

-(void)showMethod{
    
    Number *numberList = [self.numberArray objectAtIndex:self.index];
    
    self.englishLetter.text = numberList.englishLetter;
    self.spanishLetter.text = numberList.spanishLetter;
    self.englishWord.text = numberList.englishLabel;
    
    
    NSAttributedString *attributeText = [self.spanishNumbers objectAtIndex:self.index];
    
    [self.spanishWord setAttributedText:attributeText];
    
    
   // self.numImage.image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:numberList.imageLabel]];
    self.numImage.image = [UIImage imageNamed:numberList.imageLabel];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)spanishWords{
    
    self.spanishNumbers = [[NSMutableArray alloc]init];
    NSAttributedString *ceroAttributeString =[[NSAttributedString alloc]initWithString:@"Cero"];
    
    NSMutableAttributedString *cero =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: ceroAttributeString];
    
    [cero addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(2, 1)];
  
    [cero addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(3, 1)];
    
    [self.spanishNumbers addObject:cero];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    NSAttributedString *unoAttributeString =[[NSAttributedString alloc]initWithString:@"Uno"];
    
    NSMutableAttributedString *uno =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: unoAttributeString];
    
    [uno addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(1, 1)];
    [uno addAttribute:NSForegroundColorAttributeName
                value:[UIColor blackColor]
                range:NSMakeRange(2, 1)];
    
    
    [self.spanishNumbers addObject:uno];
    
    ////////////////////////////////////////////////////////////////////////////////////////////

    
    NSAttributedString *dosAttributeString =[[NSAttributedString alloc]initWithString:@"Dos"];
    
    NSMutableAttributedString *dos =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: dosAttributeString];
    
   // [dos addAttribute:NSForegroundColorAttributeName
                //value:[UIColor blackColor]
    //            range:NSMakeRange(1, 1)];
    
    
    
    [self.spanishNumbers addObject:dos];
    
    ////////////////////////////////////////////////////////////////////////////////////////////

    
    
    NSAttributedString *tresAttributeString =[[NSAttributedString alloc]initWithString:@"Tres"];
    
    NSMutableAttributedString *tres =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: tresAttributeString];
    
    
    
    
    
    [self.spanishNumbers addObject:tres];
    
    ////////////////////////////////////////////////////////////////////////////////////////////

    
    NSAttributedString *cuatroAttributeString =[[NSAttributedString alloc]initWithString:@"Cuatro"];
    
    NSMutableAttributedString *cuatro =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: cuatroAttributeString];
    
    [cuatro addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(3, 1)];
    
    [cuatro addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(4, 1)];
    
    [cuatro addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(5, 1)];
    
    
    
    [self.spanishNumbers addObject:cuatro];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    
    
    NSAttributedString *cincoAttributeString =[[NSAttributedString alloc]initWithString:@"Cinco"];
    
    NSMutableAttributedString *cinco =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: cincoAttributeString];
    
    [cinco addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(3, 1)];
    
    [cinco addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];

    
    
    
    [self.spanishNumbers addObject:cinco];
    
    ////////////////////////////////////////////////////////////////////////////////////////////

  
    NSAttributedString *seisAttributeString =[[NSAttributedString alloc]initWithString:@"Seis"];
    
    NSMutableAttributedString *seis =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: seisAttributeString];
    
    
    
    
    [self.spanishNumbers addObject:seis];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    
    NSAttributedString *sieteAttributeString =[[NSAttributedString alloc]initWithString:@"Siete"];
    
    NSMutableAttributedString *siete =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: sieteAttributeString];
    
    [siete addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(3, 1)];
    
    [siete addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];

    
    
    
    [self.spanishNumbers addObject:siete];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *ochoAttributeString =[[NSAttributedString alloc]initWithString:@"Ocho"];
    
    NSMutableAttributedString *ocho =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: ochoAttributeString];
    
    [ocho addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(1, 1)];
    [ocho addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(2, 1)];
    [ocho addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(3, 1)];
    
    
    [self.spanishNumbers addObject:ocho];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *nueveAttributeString =[[NSAttributedString alloc]initWithString:@"Nueve"];
    
    NSMutableAttributedString *nueve =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: nueveAttributeString];
    
    [nueve addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(3, 1)];
    
    [nueve addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];

    
    
    
    [self.spanishNumbers addObject:nueve];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *diezAttributeString =[[NSAttributedString alloc]initWithString:@"Diez"];
    
    NSMutableAttributedString *diez =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: diezAttributeString];
    

    
    [self.spanishNumbers addObject:diez];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *onceAttributeString =[[NSAttributedString alloc]initWithString:@"Once"];
    
    NSMutableAttributedString *once =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: onceAttributeString];
    
    [once addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(2, 1)];
    
    
    
    [once addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(3, 1)];
    
    
    [self.spanishNumbers addObject:once];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *doceAttributeString =[[NSAttributedString alloc]initWithString:@"Doce"];
    
    NSMutableAttributedString *doce =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: doceAttributeString];
    
    [doce addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(2, 1)];
    
    [doce addAttribute:NSForegroundColorAttributeName
                 value:[UIColor blackColor]
                 range:NSMakeRange(3, 1)];
    
    [self.spanishNumbers addObject:doce];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *treceAttributeString =[[NSAttributedString alloc]initWithString:@"Trece"];
    
    NSMutableAttributedString *trece =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: treceAttributeString];
    
    [trece addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(3, 1)];
    [trece addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];
    
    
    [self.spanishNumbers addObject:trece];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *catorceAttributeString =[[NSAttributedString alloc]initWithString:@"Catorce"];
    
    NSMutableAttributedString *catorce =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: catorceAttributeString];
    
    [catorce addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(2, 1)];
    [catorce addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(3, 1)];
    [catorce addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(4, 1)];
    
    [self.spanishNumbers addObject:catorce];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *quinceAttributeString =[[NSAttributedString alloc]initWithString:@"Quince"];
    
    NSMutableAttributedString *quince =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: quinceAttributeString];
    
    [quince addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];
    
    [quince addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(5, 1)];
    
    [self.spanishNumbers addObject:quince];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *dieciseisAttributeString =[[NSAttributedString alloc]initWithString:@"Dieciseis"];
    
    NSMutableAttributedString *dieciseis =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: dieciseisAttributeString];
    
    [dieciseis addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(3, 1)];
    
    
    [dieciseis addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
    
    [self.spanishNumbers addObject:dieciseis];
    
    ////////////////////////////////////////////////////////////////////////////////////////////

    NSAttributedString *diecisieteAttributeString =[[NSAttributedString alloc]initWithString:@"Diecisiete"];
    
    NSMutableAttributedString *diecisiete =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: diecisieteAttributeString];
    
    [diecisiete addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
    
   [diecisiete addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
    
    
   [diecisiete addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(8, 1)];

    [diecisiete addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(9, 1)];
    
    
    [self.spanishNumbers addObject:diecisiete];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *dieciochoAttributeString =[[NSAttributedString alloc]initWithString:@"Dieciocho"];
    
    NSMutableAttributedString *dieciocho =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: dieciochoAttributeString];
    
    
    [dieciocho addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
    
    [dieciocho addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];

    
    [dieciocho addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(6, 1)];
    

    [dieciocho addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(7, 1)];
    
    [dieciocho addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(8, 1)];
    

    
    
    [self.spanishNumbers addObject:dieciocho];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *diecinueveAttributeString =[[NSAttributedString alloc]initWithString:@"Diecinueve"];
    
    NSMutableAttributedString *diecinueve =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: diecinueveAttributeString];
    
    [diecinueve addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
    
    [diecinueve addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
    
    
    [diecinueve addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(8, 1)];
    
    [diecinueve addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(9, 1)];
    
    
    [self.spanishNumbers addObject:diecinueve];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
    NSAttributedString *veinteAttributeString =[[NSAttributedString alloc]initWithString:@"Veinte"];
    
    NSMutableAttributedString *veinte =
    [[NSMutableAttributedString alloc]
     initWithAttributedString: veinteAttributeString];
    
    [veinte addAttribute:NSForegroundColorAttributeName
                  value:[UIColor blackColor]
                  range:NSMakeRange(4, 1)];
    
    [veinte addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(5, 1)];
    

    
    
    [self.spanishNumbers addObject:veinte];
    
    ////////////////////////////////////////////////////////////////////////////////////////////
   

    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


    



- (IBAction)previousButtonClicked:(id)sender {
    
    if (self.index == 0) {
        self.index = 20;
    }else {
        self.index --;
    }

    [self showMethod];

}

- (IBAction)engButtonClicked:(id)sender {
    
    Number *number = [self.numberArray objectAtIndex:self.index];
    NSString *englishSound = number.englishSound;
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:englishSound ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
    

}

- (IBAction)nextButtonClicked:(id)sender {
    
    if (self.index == 20) {
        self.index = 0;
    }else {
        self.index ++;
    }
 
    [self showMethod];
    
}

- (IBAction)spanishButtonClicked:(id)sender {
    
    Number *number = [self.numberArray objectAtIndex:self.index];
    NSString *spanishSound = number.spanishSound;
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:spanishSound ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
}
@end
