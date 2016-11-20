//
//  ParablasViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 17/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "ParablasViewController.h"
#import "Parablas.h"
#import "AppController.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ParablasViewController ()
@property (strong, nonatomic) IBOutlet UILabel *englishLetter;
@property (strong, nonatomic) IBOutlet UILabel *spanishLetter;
- (IBAction)englishButtonClicked:(id)sender;
- (IBAction)spanishButttonClicked:(id)sender;
- (IBAction)nextButtonClicked:(id)sender;
- (IBAction)prevButtonClicked:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *spanishLabel;
@property (strong, nonatomic) IBOutlet UILabel *englishlabel;
@property (strong,nonatomic) NSMutableArray *parablasArray;
@property(strong,nonatomic)AppController *appController;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) AVAudioPlayer *audioPlayer;
@property(nonatomic)NSInteger index;
@end

@implementation ParablasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view.
    self.appController = [AppController sharedManager];
    self.parablasArray = [[NSMutableArray alloc]init];
    
    NSLog(@"the appCOntroller clicked string %@",self.appController.clickedString);
    
    if([self.appController.clickedString isEqualToString:@"A"]){
    
    Parablas *word0 = [[Parablas alloc]init];
    word0.spanLetter = @"Aa";
    word0.engLetter = @"Ff";
        
        
        NSAttributedString *abanicoAttributeString =[[NSAttributedString alloc]initWithString:@"Abanico"];
        
        NSMutableAttributedString *abanico =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: abanicoAttributeString];
        
        [abanico addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
        
        [abanico addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
        
        [abanico addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];
        
        [abanico addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        
        
    word0.spanLabel = abanico;
    word0.engLabel = @"Fan";
    word0.imgName = @"abanico.jpg";
    [self.parablasArray addObject:word0];
    
    Parablas *word1 = [[Parablas alloc]init];
    word1.spanLetter = @"Aa";
    word1.engLetter = @"Bb";
        
        NSAttributedString *abejaAttributeString =[[NSAttributedString alloc]initWithString:@"Abeja"];
        
        NSMutableAttributedString *abeja =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: abejaAttributeString];
        
        [abeja addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];

        [abeja addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        

        
        word1.spanLabel = abanico;
   
    word1.engLabel = @"Bee";
    word1.imgName = @"abeja.jpg";
    [self.parablasArray addObject:word1];
    

    Parablas *word2 = [[Parablas alloc]init];
    word2.spanLetter = @"Aa";
    word2.engLetter = @"Cc";
        
        
        NSAttributedString *abrigoAttributeString =[[NSAttributedString alloc]initWithString:@"Abrigo"];
        
        NSMutableAttributedString *abrigo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: abrigoAttributeString];
        
        
        [abrigo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        [abrigo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
       // [abeja addAttribute:NSForegroundColorAttributeName
                    //  value:[UIColor blackColor]
                    //  range:NSMakeRange(2, 1)];
        

    word2.spanLabel = abrigo;
    word2.engLabel = @"Coat";
    word2.imgName = @"abrigo.jpg";
    [self.parablasArray addObject:word2];
    

        
        
        
        
    Parablas *word3 = [[Parablas alloc]init];
    word3.spanLetter = @"Aa";
    word3.engLetter = @"Gg";
        
        
        NSAttributedString *abuelaAttributeString =[[NSAttributedString alloc]initWithString:@"Abuela"];
        
        NSMutableAttributedString *abuela =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: abuelaAttributeString];
        
        
        [abuela addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        [abuela addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        

        [abuela addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        


        
        
    word3.spanLabel = abuela;
    word3.engLabel = @"Grand Mother";
    word3.imgName = @"abuela.jpg";
    [self.parablasArray addObject:word3];
    

    Parablas *word4 = [[Parablas alloc]init];
    word4.spanLetter = @"Aa";
    word4.engLetter = @"Gg";
        
        
        NSAttributedString *abueloAttributeString =[[NSAttributedString alloc]initWithString:@"Abuelo"];
        
        NSMutableAttributedString *abuelo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: abueloAttributeString];
        
        
        [abuelo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        [abuelo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        [abuelo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        


        
        word4.spanLabel = abuelo;

    word4.engLabel = @"Grand Father";
    word4.imgName = @"abuelo.jpg";
    [self.parablasArray addObject:word4];
    

    Parablas *word5 = [[Parablas alloc]init];
    word5.spanLetter = @"Aa";
    word5.engLetter = @"Aa";
    
        
        NSAttributedString *aguacateAttributeString =[[NSAttributedString alloc]initWithString:@"Aguacate"];
        
        NSMutableAttributedString *aguacate =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: aguacateAttributeString];
        
        [aguacate addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        
        [aguacate addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        [aguacate addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        
        [aguacate addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(6, 1)];
        
        [aguacate addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(7, 1)];
        

        
        
        
        
       word5.spanLabel = aguacate;
    word5.engLabel = @"Avacado";
    word5.imgName = @"aguacate.jpg";
    [self.parablasArray addObject:word5];
    


    Parablas *word6 = [[Parablas alloc]init];
    word6.spanLetter = @"Aa";
    word6.engLetter = @"Ee";
        NSAttributedString *aguilaAttributeString =[[NSAttributedString alloc]initWithString:@"Águila"];
        
        NSMutableAttributedString *aguila =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: aguilaAttributeString];
        
        
        [aguila addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        

        [aguila addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        

        [aguila addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        

        
        
        
        
        word6.spanLabel = aguila;
    word6.engLabel = @"Eagle";
    word6.imgName = @"aguila.jpg";
    [self.parablasArray addObject:word6];
    

    Parablas *word7 = [[Parablas alloc]init];
    word7.spanLetter = @"Aa";
    word7.engLetter = @"Nn";
   //word7.spanLabel = @"Aguja";
        NSAttributedString *agujaAttributeString =[[NSAttributedString alloc]initWithString:@"Aguja"];
        
        NSMutableAttributedString *aguja =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: agujaAttributeString];
        
        [aguja addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        
        [aguja addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
      
        

        
        
    word7.spanLabel = aguja;
    word7.engLabel = @"Needle";
    word7.imgName = @"aguja.jpg";
    [self.parablasArray addObject:word7];
    

    Parablas *wordA8 = [[Parablas alloc]init];
    wordA8.spanLetter = @"Aa";
    wordA8.engLetter = @"Gg";
   //
        
        NSAttributedString *ajoAttributeString =[[NSAttributedString alloc]initWithString:@"AbanAjoico"];
        
        NSMutableAttributedString *ajo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: ajoAttributeString];
        
        [ajo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        
        [ajo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        
        
        wordA8.spanLabel = ajo;
    wordA8.engLabel = @"Garlic";
    wordA8.imgName = @"ajo.jpg";
    [self.parablasArray addObject:wordA8];
    

    Parablas *wordA9 = [[Parablas alloc]init];
    wordA9.spanLetter = @"Aa";
    wordA9.engLetter = @"Rr";
   
        
        NSAttributedString *alfombraAttributeString =[[NSAttributedString alloc]initWithString:@"Alfombra"];
        
        NSMutableAttributedString *alfombra =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: alfombraAttributeString];
        
        [alfombra addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        [alfombra addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        
        [alfombra addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(4, 1)];
        

        
         wordA9.spanLabel = alfombra;
    wordA9.engLabel = @"Rug";
    wordA9.imgName = @"alfombra.jpg";
    [self.parablasArray addObject:wordA9];
    


    Parablas *wordA10 = [[Parablas alloc]init];
    wordA10.spanLetter = @"Aa";
    wordA10.engLetter = @"Aa";
    //
        
        
        NSAttributedString *almendraAttributeString =[[NSAttributedString alloc]initWithString:@"Almendra"];
        
        NSMutableAttributedString *almendra =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: almendraAttributeString];
        
        
        
        [almendra addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(2, 1)];
        
        [almendra addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(3, 1)];
        
        [almendra addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(4, 1)];
        
        
        
        
        wordA10.spanLabel = almendra;
        
    wordA10.engLabel = @"Almond";
    wordA10.imgName = @"almendra.jpg";
    [self.parablasArray addObject:wordA10];
        
        
        
        
    
    Parablas *wordA11 = [[Parablas alloc]init];
    wordA11.spanLetter = @"Aa";
    wordA11.engLetter = @"Yy";
    //wordA11.spanLabel = @"Amarillo";
        
        
        
        NSAttributedString *amarilloAttributeString =[[NSAttributedString alloc]initWithString:@"Amarillo"];
        
        NSMutableAttributedString *amarillo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: amarilloAttributeString];
        
        [amarillo addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(1, 1)];
        [amarillo addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(2, 1)];

        [amarillo addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(5, 1)];

        [amarillo addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(6, 1)];
        [amarillo addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(7, 1)];

        
        
        wordA11.spanLabel = amarillo;
    wordA11.engLabel = @"Yellow";
    wordA11.imgName = @"amarillo.jpg";
    [self.parablasArray addObject:wordA11];
    
    Parablas *wordA12 = [[Parablas alloc]init];
    wordA12.spanLetter = @"Aa";
    wordA12.engLetter = @"Oo";
    //wordA12.spanLabel = @"Anaranjado";
        
        NSAttributedString *anaranjadoAttributeString =[[NSAttributedString alloc]initWithString:@"Anaranjado"];
        
        NSMutableAttributedString *anaranjado =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: anaranjadoAttributeString];
        
        
        [anaranjado addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(1, 1)];

        
        [anaranjado addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(2, 1)];
        
        [anaranjado addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(6, 1)];
        [anaranjado addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(7, 1)];
        
        wordA12.spanLabel = anaranjado;
        
    wordA12.engLabel = @"Orange";
    wordA12.imgName = @"anaranjado.jpg";
    [self.parablasArray addObject:wordA12];
    
    Parablas *wordA13 = [[Parablas alloc]init];
    wordA13.spanLetter = @"Aa";
    wordA13.engLetter = @"Aa";
    //wordA13.spanLabel = @"ANcla";   ////////////////////////////////////From here
        NSAttributedString *anclaAttributeString =[[NSAttributedString alloc]initWithString:@"Ancla"];
        
        NSMutableAttributedString *ancla =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: anclaAttributeString];
        
        [ancla addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(2, 1)];
        
        
        [ancla addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        [ancla addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];

        wordA13.spanLabel = ancla;
    wordA13.engLabel = @"Anchor";
    wordA13.imgName = @"ancla.jpg";
    [self.parablasArray addObject:wordA13];
    
    Parablas *wordA14 = [[Parablas alloc]init];
    wordA14.spanLetter = @"Aa";
    wordA14.engLetter = @"Aa";
    //wordA.spanLabel = @"Abanico";
        NSAttributedString *angelAttributeString =[[NSAttributedString alloc]initWithString:@"Ångel"];
        
        NSMutableAttributedString *angel =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: angelAttributeString];
        
        [angel addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];

        
        [angel addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
        
        
        [angel addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
        
        
        
        
        wordA14.spanLabel = angel;
        
    wordA14.engLabel = @"Angel";
    wordA14.imgName = @"angel.jpg";
    [self.parablasArray addObject:wordA14];
    
    Parablas *wordA15 = [[Parablas alloc]init];
    wordA15.spanLetter = @"Aa";
    wordA15.engLetter = @"Rr";
    //wordA.spanLabel = @"AniLLO";
        NSAttributedString *anilloAttributeString =[[NSAttributedString alloc]initWithString:@"Anillo"];
        
        NSMutableAttributedString *anillo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: anilloAttributeString];
        
        
        
        [anillo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        
        [anillo addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        
        
        
        wordA15.spanLabel = anillo;
    wordA15.engLabel = @"Ring";
    wordA15.imgName = @"anillo.jpg";
    [self.parablasArray addObject:wordA15];
    
    Parablas *wordA16 = [[Parablas alloc]init];
    wordA16.spanLetter = @"Aa";
    wordA16.engLetter = @"Ss";
        NSAttributedString *aranaAttributeString =[[NSAttributedString alloc]initWithString:@"Araña"];
        
        NSMutableAttributedString *arana =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: aranaAttributeString];
        
        
        [arana addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(1, 1)];
        
        [arana addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        

    wordA16.spanLabel = arana;
    wordA16.engLabel = @"Spider";
    wordA16.imgName = @"arana.jpg";
    [self.parablasArray addObject:wordA16];
    
    Parablas *wordA17 = [[Parablas alloc]init];
    wordA17.spanLetter = @"Aa";
    wordA17.engLetter = @"Tt";
   // wordA17.spanLabel = @"";
    wordA17.engLabel = @"Tree";
        NSAttributedString *arbolAttributeString =[[NSAttributedString alloc]initWithString:@"Ãrbol"];
        
        NSMutableAttributedString *arbol =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: arbolAttributeString];
        
        [arbol addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        [arbol addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        
        [arbol addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
        
        
        wordA17.spanLabel = arbol;
    wordA17.imgName = @"arbol.jpg";
    [self.parablasArray addObject:wordA17];
    
    Parablas *wordA18 = [[Parablas alloc]init];
    wordA18.spanLetter = @"Aa";
    wordA18.engLetter = @"Ss";
    //wordA18.spanLabel = @"ARdiLLA";
        NSAttributedString *ardillaAttributeString =[[NSAttributedString alloc]initWithString:@"Ardilla"];
        
        NSMutableAttributedString *ardilla =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: ardillaAttributeString];
        
        
        [ardilla addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [ardilla addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        
        wordA18.spanLabel = ardilla;
    wordA18.engLabel = @"Squirrel";
    wordA18.imgName = @"ardilla.jpg";
    [self.parablasArray addObject:wordA18];
    
    Parablas *wordA19 = [[Parablas alloc]init];
    wordA19.spanLetter = @"Aa";
    wordA19.engLetter = @"Dd";
    //wordA19.spanLabel = @"ASno";
        NSAttributedString *asnoAttributeString =[[NSAttributedString alloc]initWithString:@"Asno"];
        
        NSMutableAttributedString *asno =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: asnoAttributeString];
        
        
        
        [asno addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [asno addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        wordA19.spanLabel = asno;
        wordA19.engLabel = @"Donkey";
    wordA19.imgName = @"asno.jpg";
    [self.parablasArray addObject:wordA19];
    
    Parablas *wordA20 = [[Parablas alloc]init];
    wordA20.spanLetter = @"Aa";
    wordA20.engLetter = @"Aa";
    //wordA20.spanLabel = @"AStroNAUta";
        NSAttributedString *astronautaAttributeString =[[NSAttributedString alloc]initWithString:@"Astronauta"];
        
        NSMutableAttributedString *astronauta =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: astronautaAttributeString];
        
        
        [astronauta addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [astronauta addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(3, 1)];
        [astronauta addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(4, 1)];
        [astronauta addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(8, 1)];
        
        [astronauta addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(9, 1)];


        
        wordA20.spanLabel = astronauta;
        
    wordA20.engLabel = @"Astronaut";
    wordA20.imgName = @"astronauta.jpg";
    [self.parablasArray addObject:wordA20];
    
    Parablas *wordA21 = [[Parablas alloc]init];
    wordA21.spanLetter = @"Aa";
    wordA21.engLetter = @"Oo";
    //wordA21.spanLabel = @"AvesTRUZ";
        NSAttributedString *avestruzAttributeString =[[NSAttributedString alloc]initWithString:@"Avestruz"];
        
        NSMutableAttributedString *avestruz =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: avestruzAttributeString];
        
        
        
        
        [avestruz addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(1, 1)];

        
        
        
        [avestruz addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(2, 1)];
        [avestruz addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(3, 1)];


        
        
    wordA21.engLabel = @"Ostrich";
    wordA21.imgName = @"avestruz.jpg";
    [self.parablasArray addObject:wordA21];
    
    Parablas *wordA22 = [[Parablas alloc]init];
    wordA22.spanLetter = @"Aa";
    wordA22.engLetter = @"Pp";
    //wordA22.spanLabel = @"AviÓN";
        NSAttributedString *avionAttributeString =[[NSAttributedString alloc]initWithString:@"Aviõn"];
        
        NSMutableAttributedString *avion =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: avionAttributeString];
        
        
        
        
        [avion addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(1, 1)];

        
        [avion addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        

        
        
        
        wordA22.spanLabel = avion;
    wordA22.engLabel = @"Plane";
    wordA22.imgName = @"avion.jpg";
    [self.parablasArray addObject:wordA22];
    
    Parablas *wordA23 = [[Parablas alloc]init];
    wordA23.spanLetter = @"Aa";
    wordA23.engLetter = @"Ww";
    //wordA23.spanLabel = @"AvisPA";
        NSAttributedString *avispaAttributeString =[[NSAttributedString alloc]initWithString:@"Avispa"];
        
        NSMutableAttributedString *avispa =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: avispaAttributeString];
        
        
        [avispa addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(1, 1)];
        

        
        [avispa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [avispa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        wordA23.spanLabel = avispa;
        
    wordA23.engLabel = @"Wasp";
    wordA23.imgName = @"avispa.jpg";
    [self.parablasArray addObject:wordA23];
    
    Parablas *wordA24 = [[Parablas alloc]init];
    wordA24.spanLetter = @"Aa";
    wordA24.engLetter = @"Bb";
    //wordA24.spanLabel = @"Azul";
        NSAttributedString *azulAttributeString =[[NSAttributedString alloc]initWithString:@"Azul"];
        
        NSMutableAttributedString *azul =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: azulAttributeString];
        
        [azul addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(1, 1)];
        [azul addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        [azul addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        wordA24.spanLabel = azul;
    wordA24.engLabel = @"Blue";
    wordA24.imgName = @"azul.jpg";
    [self.parablasArray addObject:wordA24];
    
        
}
  if([self.appController.clickedString isEqualToString:@"B"]){
    
    
    
    
    
    Parablas *wordsB1 =[[Parablas alloc]init];
    wordsB1.spanLetter = @"Bb";
    wordsB1.engLetter = @"Bb";
    //wordB1.spanLabel = @"BAlanZA";
      NSAttributedString *balanzaAttributeString =[[NSAttributedString alloc]initWithString:@"Balanza"];
      
      NSMutableAttributedString *balanza =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: balanzaAttributeString];
      
      
      
      [balanza addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(2, 1)];
      
      
      [balanza addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];

      [balanza addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];

      
      
      wordsB1.spanLabel = balanza;
      
    wordsB1.engLabel = @"Balance";
    wordsB1.imgName = @"balanza.jpg";
    [self.parablasArray addObject:wordsB1];
    
    
    Parablas *wordsB2 =[[Parablas alloc]init];
    wordsB2.spanLetter = @"Bb";
    wordsB2.engLetter = @"Ww";
    //wordB2.spanLabel = @"BAlleNA";
      NSAttributedString *ballenaAttributeString =[[NSAttributedString alloc]initWithString:@"Ballena"];
      
      NSMutableAttributedString *ballena =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: ballenaAttributeString];
      
      [ballena addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];

      
      
      [ballena addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
      
      [ballena addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
      
      

      
      
      wordsB2.spanLabel = ballena;
    wordsB2.engLabel = @"Whale";
    wordsB2.imgName = @"ballena.jpg";
    [self.parablasArray addObject:wordsB2];
    
    Parablas *wordsB3 =[[Parablas alloc]init];
    wordsB3.spanLetter = @"Bb";
    wordsB3.engLetter = @"Bb";
    //wordB3.spanLabel = @"BAlón";
      NSAttributedString *balónAttributeString =[[NSAttributedString alloc]initWithString:@"Balón"];
      
      NSMutableAttributedString *balón =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: balónAttributeString];
      
      
      
      
      [balón addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
      

      [balón addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(3, 1)];

      [balón addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(4, 1)];

      wordsB3.spanLabel = balón;
    wordsB3.engLabel = @"Ball";
    wordsB3.imgName = @"balon.jpg";
    [self.parablasArray addObject:wordsB3];
    
    Parablas *wordsB4 =[[Parablas alloc]init];
    wordsB4.spanLetter = @"Bb";
    wordsB4.engLetter = @"Bb";
    //wordB4.spanLabel = @"BAMbú";
      NSAttributedString *bambúAttributeString =[[NSAttributedString alloc]initWithString:@"Bambú"];
      
      NSMutableAttributedString *bambú =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bambúAttributeString];
      
      [bambú addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(3, 1)];

      
      [balón addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(4, 1)];

      
      
      
      
      
      
      wordsB4.spanLabel = bambú;
    wordsB4.engLabel = @"Bamboo";
    wordsB4.imgName = @"bambu.jpg";
    [self.parablasArray addObject:wordsB4];
    
    Parablas *wordsB5 =[[Parablas alloc]init];
    wordsB5.spanLetter = @"Bb";
    wordsB5.engLetter = @"Bb";
    //wordB5.spanLabel = @"BAnaNO";
      NSAttributedString *bananoAttributeString =[[NSAttributedString alloc]initWithString:@"Banano"];
      
      NSMutableAttributedString *banano =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bananoAttributeString];
      
      
      
      [banano addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(2, 1)];

      
      
      [banano addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];


      
      
      wordsB5.spanLabel = banano;
    wordsB5.engLabel = @"Banana";
    wordsB5.imgName = @"banano.jpg";
    [self.parablasArray addObject:wordsB5];
    
    Parablas *wordsB6 =[[Parablas alloc]init];
    wordsB6.spanLetter = @"Bb";
    wordsB6.engLetter = @"Ff";
    //wordB6.spanLabel = @"BANdeRA";
      NSAttributedString *banderaAttributeString =[[NSAttributedString alloc]initWithString:@"BANdeRA"];
      
      NSMutableAttributedString *bandera =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: banderaAttributeString];
      
      
      
      [bandera addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

      
      [bandera addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];

      
      
      wordsB6.spanLabel = bandera;
    wordsB6.engLabel = @"Flag";
    wordsB6.imgName = @"bandera.jpg";
    [self.parablasArray addObject:wordsB6];
    
    Parablas *wordsB7 =[[Parablas alloc]init];
    wordsB7.spanLetter = @"Bb";
    wordsB7.engLetter = @"Bb";
    //wordB7.spanLabel = @"BARco";
      NSAttributedString *barcoAttributeString =[[NSAttributedString alloc]initWithString:@"Barco"];
      
      NSMutableAttributedString *barco =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: barcoAttributeString];
      
      
      [barco addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];

      
      
      [barco addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(5, 1)];
      
      wordsB7.spanLabel = barco;
      
    wordsB7.engLabel = @"Boat";
    wordsB7.imgName = @"barco.jpg";
    [self.parablasArray addObject:wordsB7];
    
    Parablas *wordsB8 =[[Parablas alloc]init];
    wordsB8.spanLetter = @"Bb";
    wordsB8.engLetter = @"Bb";
    //wordB8.spanLabel = @"BArril";
      NSAttributedString *barrilAttributeString =[[NSAttributedString alloc]initWithString:@"Barril"];
      
      NSMutableAttributedString *barill =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: barrilAttributeString];
      
      
      [barill addAttribute:NSForegroundColorAttributeName
                    value:[UIColor blackColor]
                    range:NSMakeRange(2, 1)];
      
      
      [barill addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      
      [barill addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
      [barill addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
      
      
      wordsB8.spanLabel = barill;
    wordsB8.engLabel = @"Barrel";
    wordsB8.imgName = @"barril.jpg";
    [self.parablasArray addObject:wordsB8];
    
    Parablas *wordsB9 =[[Parablas alloc]init];
    wordsB9.spanLetter = @"Bb";
    wordsB9.engLetter = @"Bb";
    //wordB9.spanLabel = @"BAte";
      NSAttributedString *bateAttributeString =[[NSAttributedString alloc]initWithString:@"Bate"];
      
      NSMutableAttributedString *bate =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bateAttributeString];
      
      
      
      
      [bate addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
      
      [bate addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(3, 1)];
      
      
      wordsB9.spanLabel = bate;
    wordsB9.engLabel = @"Bat";
    wordsB9.imgName = @"bate.jpg";
    [self.parablasArray addObject:wordsB9];
    
    Parablas *wordsB10 =[[Parablas alloc]init];
    wordsB10.spanLetter = @"Bb";
    wordsB10.engLetter = @"Cc";
    //wordB10.spanLabel = @"BAul";
      NSAttributedString *baulAttributeString =[[NSAttributedString alloc]initWithString:@"Baul"];
      
      NSMutableAttributedString *baul =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: baulAttributeString];
      
      
      [baul addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(2, 1)];
      
      [baul addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(3, 1)];
      wordsB10.spanLabel = baul;
    wordsB10.engLabel = @"Chest";
    wordsB10.imgName = @"baul.jpg";
    [self.parablasArray addObject:wordsB10];
    
    Parablas *wordsB11 =[[Parablas alloc]init];
    wordsB11.spanLetter = @"Bb";
    wordsB11.engLetter = @"Bb";
    //wordB11.spanLabel = @"BEbé";
      NSAttributedString *bebeAttributeString =[[NSAttributedString alloc]initWithString:@"Bebé"];
      
      NSMutableAttributedString *bebe =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bebeAttributeString];
      
      
      [bebe addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(2, 1)];
      [bebe addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(3, 1)];
      
      wordsB11.spanLabel = bebe;
    wordsB11.engLabel = @"Baby";
    wordsB11.imgName = @"bebe.jpg";
    [self.parablasArray addObject:wordsB11];
    
    Parablas *wordsB12 =[[Parablas alloc]init];
    wordsB12.spanLetter = @"Bb";
    wordsB12.engLetter = @"Bb";
    //wordB12.spanLabel = @"BIbeRÓN";
      NSAttributedString *biberónAttributeString =[[NSAttributedString alloc]initWithString:@"Biberón"];
      
      NSMutableAttributedString *biberón =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: biberónAttributeString];
      
      
      [biberón addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(3, 1)];
      
      [biberón addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(4, 1)];
      
      
      
      wordsB12.spanLabel = biberón;
    wordsB12.engLabel = @"Bottle";
    wordsB12.imgName = @"biberon.jpg";
    [self.parablasArray addObject:wordsB12];
    
    Parablas *wordsB13 =[[Parablas alloc]init];
    wordsB13.spanLetter = @"Bb";
    wordsB13.engLetter = @"Ll";
    //wordB13.spanLabel = @"BIbliOteCA";
      NSAttributedString *bibliotecaAttributeString =[[NSAttributedString alloc]initWithString:@"Biblioteca"];
      
      NSMutableAttributedString *biblioteca =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bibliotecaAttributeString];
      
      
      [biblioteca addAttribute:NSForegroundColorAttributeName
                   value:[UIColor blackColor]
                   range:NSMakeRange(2, 1)];
      
      
      [biblioteca addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(3, 1)];
      

      [biblioteca addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(4, 1)];
      
      [biblioteca addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(6, 1)];
      

      [biblioteca addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(7, 1)];
      

      
    wordsB13.engLabel = @"Library";
    wordsB13.imgName = @"biblioteca.jpg";
    [self.parablasArray addObject:wordsB13];
    
    Parablas *wordsB14 =[[Parablas alloc]init];
    wordsB14.spanLetter = @"Bb";
    wordsB14.engLetter = @"Bb";
    //wordB14.spanLabel = @"BLOque";
      NSAttributedString *bloqueAttributeString =[[NSAttributedString alloc]initWithString:@"Bloque"];
      
      NSMutableAttributedString *bloque =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bloque];
      
      
      
      [bloque addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(3, 1)];
      
      [bloque addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(4, 1)];
      

      
      [bloque addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
      
      
      wordsB14.spanLabel = bloque;
    wordsB14.engLabel = @"Block";
    wordsB14.imgName = @"bloque.jpg";
    [self.parablasArray addObject:wordsB14];
    
    Parablas *wordsB15 =[[Parablas alloc]init];
    wordsB15.spanLetter = @"Bb";
    wordsB15.engLetter = @"Bb";
    //wordB15.spanLabel = @"BOL";
      NSAttributedString *bolAttributeString =[[NSAttributedString alloc]initWithString:@"Bol"];
      
      NSMutableAttributedString *bol =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bolAttributeString];
      
      wordsB15.spanLabel = bol;
    wordsB15.engLabel = @"Bowl";
    wordsB15.imgName = @"bol.jpg";
    [self.parablasArray addObject:wordsB15];
    
    
    Parablas *wordsB16 =[[Parablas alloc]init];
    wordsB16.spanLetter = @"Bb";
    wordsB16.engLetter = @"Ff";
    //wordB16.spanLabel = @"BOMbeRO";
      NSAttributedString *bomberoAttributeString =[[NSAttributedString alloc]initWithString:@"Bombero"];
      
      NSMutableAttributedString *bombero =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bomberoAttributeString];
      
      [bombero addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      
      [bombero addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
     
      wordsB16.spanLabel = bombero;
    wordsB16.engLabel = @"Firefighter";
    wordsB16.imgName = @"bombero.jpg";
    [self.parablasArray addObject:wordsB16];
    
    Parablas *wordsB17 =[[Parablas alloc]init];
    wordsB17.spanLetter = @"Bb";
    wordsB17.engLetter = @"Ll";
    //wordB17.spanLabel = @"BOMbiLLA";
      NSAttributedString *bombillaAttributeString =[[NSAttributedString alloc]initWithString:@"Bombilla"];
      
      NSMutableAttributedString *bombilla =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bombillaAttributeString];
      
      
      [bombilla addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      [bombilla addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
      
      wordsB17.spanLabel = bombilla;
      
    wordsB17.engLabel = @"Lightbulb";
    wordsB17.imgName = @"bombilla.jpg";
    [self.parablasArray addObject:wordsB17];
    
    Parablas *wordsB18 =[[Parablas alloc]init];
    wordsB18.spanLetter = @"Bb";
    wordsB18.engLetter = @"Ff";
    //wordB18.spanLabel = @"BOSque";
      NSAttributedString *bosqueAttributeString =[[NSAttributedString alloc]initWithString:@"Bosque"];
      
      NSMutableAttributedString *bosque =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bosqueAttributeString];
      
      [bosque addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      [bosque addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
      [bosque addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
      
      
      wordsB18.spanLabel = bosque;
      
    wordsB18.engLabel = @"Forest";
    wordsB18.imgName = @"bosque.jpg";
    [self.parablasArray addObject:wordsB18];
   
    Parablas *wordsB19 =[[Parablas alloc]init];
    wordsB19.spanLetter = @"Bb";
    wordsB19.engLetter = @"Bb";
    //wordB19.spanLabel = @"BOta";
      NSAttributedString *botaAttributeString =[[NSAttributedString alloc]initWithString:@"Bota"];
      
      NSMutableAttributedString *bota =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: botaAttributeString];
      
      
      [bota addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
      
      [bota addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      
      
      
      
      wordsB19.spanLabel = bota;
    wordsB19.engLabel = @"Boot";
    wordsB19.imgName = @"bota.jpg";
    [self.parablasArray addObject:wordsB19];
   
    Parablas *wordsB20 =[[Parablas alloc]init];
    wordsB15.spanLetter = @"Bb";
    wordsB15.engLetter = @"Bb";
    //wordB15.spanLabel = @"BOteLLA";
      NSAttributedString *botellaAttributeString =[[NSAttributedString alloc]initWithString:@"Botella"];
      
      NSMutableAttributedString *botella =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: botellaAttributeString];
      
      
      
      
      
      [botella addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
      
      
      [botella addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      

      
      
      
      
      wordsB15.spanLabel = botella;
      
      
      
    wordsB15.engLabel = @"Bottle";
    wordsB15.imgName = @"botella.jpg";
    [self.parablasArray addObject:wordsB15];
   
    Parablas *wordsB21 =[[Parablas alloc]init];
    wordsB21.spanLetter = @"Bb";
    wordsB21.engLetter = @"Aa";
    //wordB21.spanLabel = @"BRAzo";
      NSAttributedString *brazoAttributeString =[[NSAttributedString alloc]initWithString:@"Brazo"];
      
      NSMutableAttributedString *brazo =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: brazoAttributeString];
      
      
      
      [brazo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      
      
      [brazo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
      

      
      wordsB21.spanLabel = brazo;
    wordsB21.engLabel = @"Arm";
    wordsB21.imgName = @"brazo.jpg";
    [self.parablasArray addObject:wordsB21];
   
    Parablas *wordsB22 =[[Parablas alloc]init];
    wordsB22.spanLetter = @"Bb";
    wordsB22.engLetter = @"Ss";
    //wordB22.spanLabel = @"BUfanDA";
      NSAttributedString *bufandaAttributeString =[[NSAttributedString alloc]initWithString:@"Bufanda"];
      
      NSMutableAttributedString *bufanda =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: bufandaAttributeString];
      
      
      
      [bufanda addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
      

      
      [bufanda addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      

      
      
      [bufanda addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
      

      
      
      
      wordsB22.spanLabel = bufanda;
      
    wordsB22.engLabel = @"Scarf";
    wordsB22.imgName = @"bufanda.jpg";
    [self.parablasArray addObject:wordsB22];
   
    Parablas *wordsB23 =[[Parablas alloc]init];
    wordsB23.spanLetter = @"Bb";
    wordsB23.engLetter = @"Oo";
    //wordB23.spanLabel = @"BÚho";
      NSAttributedString *buhoAttributeString =[[NSAttributedString alloc]initWithString:@"Búho"];
      
      NSMutableAttributedString *buho =
      [[NSMutableAttributedString alloc]
       initWithAttributedString: buhoAttributeString];
      
      
      
      [buho addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
      
      
      [buho addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
      
      wordsB23.spanLabel = buho;
    wordsB23.engLabel = @"Owl";
    wordsB23.imgName = @"buho.jpg";
    [self.parablasArray addObject:wordsB23];
      
      
  }
    if([self.appController.clickedString isEqualToString:@"C"]){
    
    Parablas *wordsC1 =[[Parablas alloc]init];
    wordsC1.spanLetter = @"Cc";
    wordsC1.engLetter = @"Hh";
    //wordC1.spanLabel = @"CAbaLLO";
        NSAttributedString *caballoAttributeString =[[NSAttributedString alloc]initWithString:@"Caballo"];
        
        NSMutableAttributedString *caballo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: caballoAttributeString];
        
        
        [caballo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [caballo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

        

        
        wordsC1.spanLabel = caballo;
        
    wordsC1.engLabel = @"Horse";
    wordsC1.imgName = @"caballo.jpg";
    [self.parablasArray addObject:wordsC1];


    Parablas *wordsC2 =[[Parablas alloc]init];
    wordsC2.spanLetter = @"Cc";
    wordsC2.engLetter = @"Cc";
    //wordC2.spanLabel = @"CAble";
        NSAttributedString *cableAttributeString =[[NSAttributedString alloc]initWithString:@"Cable"];
        
        NSMutableAttributedString *cable =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cableAttributeString];
        
        
        
        [cable addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [cable addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [cable addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];


        
        wordsC2.spanLabel= cable;
        wordsC2.engLabel = @"Cable";
    wordsC2.imgName = @"cable.jpg";
    [self.parablasArray addObject:wordsC2];


    Parablas *wordsC3 =[[Parablas alloc]init];
    wordsC3.spanLetter = @"Cc";
    wordsC3.engLetter = @"Gg";
    //wordC3.spanLabel = @"CAbra";
        NSAttributedString *cabraAttributeString =[[NSAttributedString alloc]initWithString:@"Cabra"];
        
        NSMutableAttributedString *cabra =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cabraAttributeString];
        
        
        
        [cabra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];

        
        [cabra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [cabra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        
        wordsC3.spanLabel = cabra;
    wordsC3.engLabel = @"goat";
    wordsC3.imgName = @"cabra.jpg";
    [self.parablasArray addObject:wordsC3];
    
    Parablas *wordsC4 =[[Parablas alloc]init];
    wordsC4.spanLetter = @"Cc";
   wordsC4.engLetter = @"Cc";
    //wordsC4.spanLabel = @"CAcaO";
        NSAttributedString *cacaoAttributeString =[[NSAttributedString alloc]initWithString:@"Cacao"];
        
        NSMutableAttributedString *cacao =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cacaoAttributeString];
        
        
        [cacao addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [cacao addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

        
        wordsC4.spanLabel = cacao;
    wordsC4.engLabel = @"cocoa";
    wordsC4.imgName = @"cacao.jpg";
    [self.parablasArray addObject:wordsC4];
    
    Parablas *wordsC5 =[[Parablas alloc]init];
    wordsC5.spanLetter = @"Cc";
    wordsC5.engLetter = @"Cc";
    //wordsC5.spanLabel = @"CACtus";
        NSAttributedString *cactusAttributeString =[[NSAttributedString alloc]initWithString:@"Cactus"];
        
        NSMutableAttributedString *cactus =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cactusAttributeString];
        
        
        
        [cactus addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

        
        
        
        [cactus addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        [cactus addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];

        
        wordsC5.spanLabel = cactus;
        
    wordsC5.engLabel = @"Cactus";
    wordsC5.imgName = @"cactus.jpg";
    [self.parablasArray addObject:wordsC5];


    Parablas *wordsC6 =[[Parablas alloc]init];
    wordsC6.spanLetter = @"Cc";
    wordsC6.engLetter = @"Pp";
    //wordC6.spanLabel = @"CAlaBAza";
        NSAttributedString *calabazaAttributeString =[[NSAttributedString alloc]initWithString:@"Calabaza"];
        
        NSMutableAttributedString *calabaza =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: calabazaAttributeString];
        
        
        
        
        [caballo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];

        
        [caballo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [caballo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        
        [caballo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];

        
        
        wordsC6.spanLabel = caballo;
        
    wordsC6.engLabel = @"Pumpkin";
    wordsC6.imgName = @"calabaza.jpg";
    [self.parablasArray addObject:wordsC6];
    
    
    Parablas *wordsC7 =[[Parablas alloc]init];
    wordsC7.spanLetter = @"Cc";
    wordsC7.engLetter = @"Ss";
    //wordsC7.spanLabel = @"CAlle";
        NSAttributedString *calleAttributeString =[[NSAttributedString alloc]initWithString:@"Calle"];
        
        NSMutableAttributedString *calle =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: calleAttributeString];
        
        
        
        [calle addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [calle addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [calle addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        
        
        
        
        wordsC7.spanLabel= calle;
        
        
    wordsC7.engLabel = @"Street";
    wordsC7.imgName = @"calle.jpg";
    [self.parablasArray addObject:wordsC7];
    
    Parablas *wordsC8 =[[Parablas alloc]init];
    wordsC8.spanLetter = @"Cc";
    wordsC8.engLetter = @"Bb";
    //wordsC8.spanLabel = @"CAma";
        NSAttributedString *camaAttributeString =[[NSAttributedString alloc]initWithString:@"Cama"];
        
        NSMutableAttributedString *cama =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: camaAttributeString];
        
        
        
        [cama addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];

        
        [cama addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

        
        
        
        
        
        wordsC8.spanLabel = cama;
        
    wordsC8.engLabel = @"Bed";
    wordsC8.imgName = @"cama.jpg";
    [self.parablasArray addObject:wordsC8];
    
    Parablas *wordsC9 =[[Parablas alloc]init];
    wordsC9.spanLetter = @"Cc";
    wordsC9.engLetter = @"Cc";
    //wordsC9.spanLabel = @"CAmaLEón";
        NSAttributedString *camaleónAttributeString =[[NSAttributedString alloc]initWithString:@"Camaleón"];
        
        NSMutableAttributedString *camaleón =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: camaleónAttributeString];
        
        
        
        [camaleón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [camaleón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [camaleón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        
        [camaleón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];

        
        
        wordsC9.spanLabel = camaleón;
    wordsC9.engLabel = @"Chameleon";
    wordsC9.imgName = @"camaleon.jpg";
    [self.parablasArray addObject:wordsC9];
    
    Parablas *wordsC10 =[[Parablas alloc]init];
    wordsC10.spanLetter = @"Cc";
    wordsC10.engLetter = @"Cc";
    //wordsC10.spanLabel = @"CAmeLLO";
        NSAttributedString *camelloAttributeString =[[NSAttributedString alloc]initWithString:@"Camello"];
        
        NSMutableAttributedString *camello =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: camelloAttributeString];
        
        
        
        [camello addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [camello addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

        
        
        wordsC10.spanLabel = camello;
    wordsC10.engLabel = @"Camel";
    wordsC10.imgName = @"camello.jpg";
    [self.parablasArray addObject:wordsC10];
    
    Parablas *wordsC11 =[[Parablas alloc]init];
    wordsC11.spanLetter = @"Cc";
    wordsC11.engLetter = @"Bb";
    //wordC11.spanLabel = @"CAMpaNA";
        NSAttributedString *campanaAttributeString =[[NSAttributedString alloc]initWithString:@"Campana"];
        
        NSMutableAttributedString *campana =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: campanaAttributeString];
        
        
        
        [campana addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [campana addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        
        wordsC11.spanLabel = campana;
    wordsC11.engLabel = @"Bell";
    wordsC11.imgName = @"campana.jpg";
    [self.parablasArray addObject:wordsC11];
    
    Parablas *wordsC12 =[[Parablas alloc]init];
    wordsC12.spanLetter = @"Cc";
    wordsC12.engLetter = @"Cc";
    //wordsC12.spanLabel = @"CANgreJO";
        NSAttributedString *cangrejoAttributeString =[[NSAttributedString alloc]initWithString:@"Cangrejo"];
        
        NSMutableAttributedString *cangrejo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cangrejoAttributeString];
        
        
        [cangrejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [cangrejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        [cangrejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];

        
        wordsC12.spanLabel = cangrejo;
    wordsC12.engLabel = @"Crab";
    wordsC12.imgName = @"cangrejo.jpg";
    [self.parablasArray addObject:wordsC12];
    
    Parablas *wordsC13 =[[Parablas alloc]init];
    wordsC13.spanLetter = @"Cc";
    wordsC13.engLetter = @"Kk";
    //wordsC13.spanLabel = @"CANguRO";
        NSAttributedString *canguroAttributeString =[[NSAttributedString alloc]initWithString:@"Canguro"];
        
        NSMutableAttributedString *canguro =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: canguroAttributeString];
        
        
        [canguro addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [canguro addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        
        
        wordsC13.spanLabel = cangrejo;
        
    wordsC13.engLabel = @"Kangaroo";
    wordsC13.imgName = @"canguro.jpg";
    [self.parablasArray addObject:wordsC13];
   
    Parablas *wordsC14 =[[Parablas alloc]init];
    wordsC14.spanLetter = @"Cc";
    wordsC14.engLetter = @"Cc";
    //wordsC14.spanLabel = @"CArro";
        NSAttributedString *carroAttributeString =[[NSAttributedString alloc]initWithString:@"Carro"];
        
        NSMutableAttributedString *carro =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: carroAttributeString];
        
        
        
        [carro addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        [carro addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [carro addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        wordsC14.spanLabel = carro;
        
    wordsC14.engLabel = @"Car";
    wordsC14.imgName = @"carro.jpg";
    [self.parablasArray addObject:wordsC14];
   
    Parablas *wordsC15 =[[Parablas alloc]init];
    wordsC15.spanLetter = @"Cc";
    wordsC15.engLetter = @"Ww";
    //wordsC15.spanLabel = @"CAScaDA";
        NSAttributedString *cascadaAttributeString =[[NSAttributedString alloc]initWithString:@"Cascada"];
        
        NSMutableAttributedString *cascada =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cascadaAttributeString];
        
        
        [cascada addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [cascada addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

        
        
        wordsC15.spanLabel = cascada;
        
    wordsC15.engLabel = @"Waterfall";
    wordsC15.imgName = @"cascada.jpg";
    [self.parablasArray addObject:wordsC15];
   
    Parablas *wordsC16 =[[Parablas alloc]init];
    wordsC16.spanLetter = @"Cc";
    wordsC16.engLetter = @"Bb";
    //wordsC16.spanLabel = @"CAStor";
        NSAttributedString *castorAttributeString =[[NSAttributedString alloc]initWithString:@"Castor"];
        
        NSMutableAttributedString *castor =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: castorAttributeString];
        
        
        [castor addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [castor addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        [castor addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];

        
        
        wordsC16.spanLabel = castor;
        
    wordsC16.engLabel = @"Beaver";
    wordsC16.imgName = @"buho.jpg";
    [self.parablasArray addObject:wordsC16];
    
    Parablas *wordsC17 =[[Parablas alloc]init];
   wordsC17.spanLetter = @"Cc";
    wordsC17.engLetter = @"Ff";
    //wordsC17.spanLabel = @"CAtorCE";
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

        
        
        
        wordsC17.spanLabel = catorce;
        
    wordsC17.engLabel = @"Fourteen";
    wordsC17.imgName = @"catorce.jpg";
    [self.parablasArray addObject:wordsC17];
   
    Parablas *wordsC18 =[[Parablas alloc]init];
    wordsC18.spanLetter = @"Cc";
    wordsC18.engLetter = @"Oo";
    //wordsC18.spanLabel = @"Cebolla";
        NSAttributedString *cebollaAttributeString =[[NSAttributedString alloc]initWithString:@"Cebolla"];
        
        NSMutableAttributedString *cebolla =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cebollaAttributeString];
        
        
        
        [cebolla addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cebolla addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        
        
        
        wordsC18.spanLabel = cebolla;
    wordsC18.engLabel = @"Onion";
    wordsC18.imgName = @"cebolla.jpg";
    [self.parablasArray addObject:wordsC18];
    
    Parablas *wordsC19 =[[Parablas alloc]init];
    wordsC19.spanLetter = @"Cc";
    wordsC19.engLetter = @"Zz";
    //wordsC19.spanLabel = @"CEbra";
        NSAttributedString *cebraAttributeString =[[NSAttributedString alloc]initWithString:@"Cebra"];
        
        NSMutableAttributedString *cebra =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cebraAttributeString];
        
        
        
        
        [cebra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cebra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [cebra addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        
        
        wordsC19.spanLabel = cebra;
    wordsC19.engLabel = @"Zebra";
    wordsC19.imgName = @"cebra.jpg";
    [self.parablasArray addObject:wordsC19];
   
    Parablas *wordsC20 =[[Parablas alloc]init];
    wordsC20.spanLetter = @"Cc";
    wordsC20.engLetter = @"Zz";
    //wordsC20.spanLabel = @"CIErre";
        NSAttributedString *cierreAttributeString =[[NSAttributedString alloc]initWithString:@"Cierre"];
        
        NSMutableAttributedString *cierre =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cierreAttributeString];
        
        
        
        
        
        [cierre addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [cierre addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        [cierre addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];
        
        
        wordsC20.spanLabel = cierre;
        
    wordsC20.engLabel = @"Zipper";
    wordsC20.imgName = @"cierre.jpg";
    [self.parablasArray addObject:wordsC20];
    
    Parablas *wordsC21 =[[Parablas alloc]init];
    wordsC21.spanLetter = @"Cc";
    wordsC21.engLetter = @"Zz";
    //wordsC21.spanLabel = @"CEro";
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
        
        wordsC21.spanLabel = cero;
    wordsC21.engLabel = @"Zero";
    wordsC21.imgName = @"cero.jpg";
    [self.parablasArray addObject:wordsC21];
   
    Parablas *wordsC22 =[[Parablas alloc]init];
    wordsC22.spanLetter = @"Cc";
    wordsC22.engLetter = @"Ss";
    //wordsC22.spanLabel = @"CIgüeÑA";
        NSAttributedString *cigüeñaAttributeString =[[NSAttributedString alloc]initWithString:@"Cigüeña"];
        
        NSMutableAttributedString *cigüeña =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cigüeñaAttributeString];
        
        
        
        [cigüeña addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cigüeña addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [cigüeña addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        wordsC22.spanLabel = cigüeña;
        
    wordsC22.engLabel = @"Stork";
    wordsC22.imgName = @"ciguena.jpg";
    [self.parablasArray addObject:wordsC22];
    
    Parablas *wordsC23 =[[Parablas alloc]init];
    wordsC23.spanLetter = @"Cc";
    wordsC23.engLetter = @"Ff";
    //wordsC23.spanLabel = @"CINco";
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
        
        
        wordsC23.spanLabel = cinco;
        
        
    wordsC23.engLabel = @"Five";
    wordsC23.imgName = @"cinco.jpg";
    [self.parablasArray addObject:wordsC23];
    
    Parablas *wordsC24 =[[Parablas alloc]init];
    wordsC24.spanLetter = @"Cc";
    wordsC24.engLetter = @"Bb";
    //wordsC24.spanLabel = @"CINtuRÓN";
        NSAttributedString *cinturónAttributeString =[[NSAttributedString alloc]initWithString:@"Cinturón"];
        
        NSMutableAttributedString *cinturón =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cinturónAttributeString];
        
        
        
        [cinturón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [cinturón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        wordsC24.spanLabel = cinturón;
    wordsC24.engLabel = @"Belt";
    wordsC24.imgName = @"cinturon.jpg";
    [self.parablasArray addObject:wordsC24];
    
    Parablas *wordsC25 =[[Parablas alloc]init];
    wordsC25.spanLetter = @"Cc";
    wordsC25.engLetter = @"Cc";
    //wordsC25.spanLabel = @"CIRco";
        NSAttributedString *circoAttributeString =[[NSAttributedString alloc]initWithString:@"Circo"];
        
        NSMutableAttributedString *circo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: circoAttributeString];
        
        
        
        [circo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [circo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        
        wordsC25.spanLabel = circo;
    wordsC25.engLabel = @"Circus";
    wordsC25.imgName = @"circo.jpg";
    [self.parablasArray addObject:wordsC25];
    
    Parablas *wordsC26 =[[Parablas alloc]init];
    wordsC26.spanLetter = @"Cc";
    wordsC26.engLetter = @"Ss";
    //wordsC26.spanLabel = @"CISne";
        
        
        
        NSAttributedString *cisneAttributeString =[[NSAttributedString alloc]initWithString:@"Cisne"];
        
        NSMutableAttributedString *cisne =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cisneAttributeString];
        
        
        
        [cisne addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        [cisne addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        
        wordsC26.spanLabel = cisne;
    wordsC26.engLabel = @"Swan";
    wordsC26.imgName = @"cisne.jpg";
    [self.parablasArray addObject:wordsC26];
   
    Parablas *wordsC27 =[[Parablas alloc]init];
    wordsC27.spanLetter = @"Cc";
    wordsC27.engLetter = @"Cc";
    //wordsC27.spanLabel = @"COco";
        NSAttributedString *cocoAttributeString =[[NSAttributedString alloc]initWithString:@"Coco"];
        
        NSMutableAttributedString *coco =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cocoAttributeString];
        
        
        
        [coco addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [coco addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        wordsC27.spanLabel = coco;
    wordsC27.engLabel = @"Coconut";
    wordsC27.imgName = @"coco.jpg";
    [self.parablasArray addObject:wordsC27];
   
    Parablas *wordsC28 =[[Parablas alloc]init];
    wordsC28.spanLetter = @"Cc";
    wordsC28.engLetter = @"Rr";
    //wordsC28.spanLabel = @"COheTE";
        NSAttributedString *coheteAttributeString =[[NSAttributedString alloc]initWithString:@"Cohete"];
        
        NSMutableAttributedString *cohete =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: coheteAttributeString];
        
        
        [cohete addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cohete addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        wordsC28.spanLabel = cohete;
    wordsC28.engLabel = @"Rocket";
    wordsC28.imgName = @"cohete.jpg";
    [self.parablasArray addObject:wordsC28];
   
    Parablas *wordsC29 =[[Parablas alloc]init];
    wordsC29.spanLetter = @"Cc";
    wordsC29.engLetter = @"Hh";
    //wordsC29.spanLabel = @"COliBRÍ";
        NSAttributedString *colibríAttributeString =[[NSAttributedString alloc]initWithString:@"Colibrí"];
        
        NSMutableAttributedString *colibrí =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: colibríAttributeString];
        
        [colibrí addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [colibrí addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        
        wordsC29.spanLabel = colibrí;
        
        
    wordsC29.engLabel = @"Hummingbird";
    wordsC29.imgName = @"colibri.jpg";
    [self.parablasArray addObject:wordsC29];
   
    Parablas *wordsC30 =[[Parablas alloc]init];
    wordsC30.spanLetter = @"Cc";
    wordsC30.engLetter = @"Bb";
    //wordsC30.spanLabel = @"COneJO";
        NSAttributedString *conejoAttributeString =[[NSAttributedString alloc]initWithString:@"Conejo"];
        
        NSMutableAttributedString *conejo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: conejoAttributeString];
        
        
        [conejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [conejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        wordsC30.spanLabel = conejo;
        
        
    wordsC30.engLabel = @"Bunny";
    wordsC30.imgName = @"conejo.jpg";
    [self.parablasArray addObject:wordsC30];
   
    Parablas *wordsC31 =[[Parablas alloc]init];
    wordsC31.spanLetter = @"Cc";
    wordsC31.engLetter = @"Cc";
    //wordsC31.spanLabel = @"COno";
        NSAttributedString *conoAttributeString =[[NSAttributedString alloc]initWithString:@"Cono"];
        
        NSMutableAttributedString *cono =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: conoAttributeString];
        
        
        
        
        [cono addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cono addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        
        
        wordsC31.spanLabel = cono;
    wordsC31.engLabel = @"Cone";
    wordsC31.imgName = @"cono.jpg";
    [self.parablasArray addObject:wordsC31];
  
    Parablas *wordsC32 =[[Parablas alloc]init];
    wordsC32.spanLetter = @"Cc";
    wordsC32.engLetter = @"Hh";
    //wordC32.spanLabel = @"COraZÓN";
        NSAttributedString *corazónAttributeString =[[NSAttributedString alloc]initWithString:@"Corazón"];
        
        NSMutableAttributedString *corazón =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: corazónAttributeString];
        
        
        
        [corazón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [corazón addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        wordsC32.spanLabel = corazón;
        
    wordsC32.engLabel = @"Heart";
    wordsC32.imgName = @"corazon.jpg";
    [self.parablasArray addObject:wordsC32];
    
    Parablas *wordsC33 =[[Parablas alloc]init];
    wordsC33.spanLetter = @"Cc";
    wordsC33.engLetter = @"Tt";
    //wordsC33.spanLabel = @"CORbaTA";
        NSAttributedString *corbataAttributeString =[[NSAttributedString alloc]initWithString:@"Corbata"];
        
        NSMutableAttributedString *corbata =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: corbataAttributeString];
        
        
        
        [corbata addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [corbata addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        
        
        wordsC33.spanLabel = corbata;
        
    wordsC33.engLabel = @"Tie";
    wordsC33.imgName = @"corbata.jpg";
    [self.parablasArray addObject:wordsC33];
   
    Parablas *wordsC34 =[[Parablas alloc]init];
    wordsC34.spanLetter = @"Cc";
    wordsC34.engLetter = @"Ff";
    //wordsC34.spanLabel = @"CUAtro";
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
                        range:NSMakeRange(4, 1)];
        
        wordsC34.spanLabel = cuatro;
        
    wordsC34.engLabel = @"Four";
    wordsC34.imgName = @"cuatro.jpg";
    [self.parablasArray addObject:wordsC34];
    
    Parablas *wordsC35 =[[Parablas alloc]init];
    wordsC35.spanLetter = @"Cc";
    wordsC35.engLetter = @"Cc";
    //wordsC35.spanLabel = @"CUcaRAcha";
        NSAttributedString *cucarachaAttributeString =[[NSAttributedString alloc]initWithString:@"Cucaracha"];
        
        NSMutableAttributedString *cucaracha =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cucarachaAttributeString];
        
        
        
        [cucaracha addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cucaracha addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [cucaracha addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        
        
        [cucaracha addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];
        [cucaracha addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(8, 1)];
        wordsC35.spanLabel= cucaracha;
    wordsC35.engLabel = @"Cockroach";
    wordsC35.imgName = @"cucaracha.jpg";
    [self.parablasArray addObject:wordsC35];
    
    Parablas *wordsC36 =[[Parablas alloc]init];
    wordsC36.spanLetter = @"Cc";
    wordsC36.engLetter = @"kk";
    //wordsC36.spanLabel = @"CUchiLLO";
        NSAttributedString *cuchilloAttributeString =[[NSAttributedString alloc]initWithString:@"Cuchillo"];
        
        NSMutableAttributedString *cuchillo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: cuchilloAttributeString];
        
        
        
        
        [cuchillo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [cuchillo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        wordsC36.spanLabel = cuchillo;
        
        
        
    wordsC36.engLabel = @"Knife";
    wordsC36.imgName = @"cuchillo.jpg";
    [self.parablasArray addObject:wordsC36];
        
        
        
        
    } if([self.appController.clickedString isEqualToString:@"D"]){
    
    Parablas *wordsD1 = [[Parablas alloc]init];
    wordsD1.spanLetter = @"Dd";
    wordsD1.engLetter = @"Dd";
    //wordsD1.spanLabel = @"DAdo";
        NSAttributedString *dadoAttributeString =[[NSAttributedString alloc]initWithString:@"Dado"];
        
        NSMutableAttributedString *dado =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dadoAttributeString];
        
        
        
        
        [dado addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [dado addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        
        wordsD1.spanLabel = dado;
    wordsD1.engLabel = @"Dice";
    wordsD1.imgName = @"dado.jpg";
    [self.parablasArray addObject:wordsD1];
    
    Parablas *wordsD2 = [[Parablas alloc]init];
    wordsD2.spanLetter = @"Dd";
    wordsD2.engLetter = @"Ll";
    //wordsD2.spanLabel = @"DAma";
        NSAttributedString *damaAttributeString =[[NSAttributedString alloc]initWithString:@"Dama"];
        
        NSMutableAttributedString *dama =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: damaAttributeString];
        
        
        [dama addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [dama addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        wordsD2.spanLabel = dama;
        
        
    wordsD2.engLabel = @"Lady";
    wordsD2.imgName = @"dama.jpg";
    [self.parablasArray addObject:wordsD2];
    
    Parablas *wordsD3 = [[Parablas alloc]init];
    wordsD3.spanLetter = @"Dd";
    wordsD3.engLetter = @"Ff";
    //wordsD3.spanLabel = @"DEdo";
        NSAttributedString *dedoAttributeString =[[NSAttributedString alloc]initWithString:@"Dedo"];
        
        NSMutableAttributedString *dedo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dedoAttributeString];
        
        
        
        [dedo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [dedo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        
        wordsD3.spanLabel = dedo;
    wordsD3.engLabel = @"Finger";
    wordsD3.imgName = @"dedo.jpg";
    [self.parablasArray addObject:wordsD3];
    
    Parablas *wordsD4 = [[Parablas alloc]init];
    wordsD4.spanLetter = @"Dd";
    wordsD4.engLetter = @"Dd";
    //wordsD4.spanLabel = @"DELfín";
        NSAttributedString *delfínAttributeString =[[NSAttributedString alloc]initWithString:@"Delfín"];
        
        NSMutableAttributedString *delfin =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: delfínAttributeString];
        
        
        [delfin addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [delfin addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        [delfin addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];
        
        
        wordsD4.spanLabel = delfin;
        
    wordsD4.engLabel = @"Dolphin";
    wordsD4.imgName = @"delfin.jpg";
    [self.parablasArray addObject:wordsD4];
    
    Parablas *wordsD5 = [[Parablas alloc]init];
    wordsD5.spanLetter = @"Dd";
    wordsD5.engLetter = @"Dd";
    //wordsD5.spanLabel = @"DEsiERto";
        NSAttributedString *desiertoAttributeString =[[NSAttributedString alloc]initWithString:@"Desierto"];
        
        NSMutableAttributedString *desierto =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: desiertoAttributeString];
        
        
        [desierto addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [desierto addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [desierto addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        [desierto addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];
        
        
        
        wordsD5.spanLabel = desierto;
    wordsD5.engLabel = @"Desert";
    wordsD5.imgName = @"desierto.jpg";
    [self.parablasArray addObject:wordsD5];
    
    Parablas *wordsD6 = [[Parablas alloc]init];
    wordsD6.spanLetter = @"Dd";
    wordsD6.engLetter = @"Dd";
    //wordsD6.spanLabel = @"Día";
        NSAttributedString *diaAttributeString =[[NSAttributedString alloc]initWithString:@"Día"];
        
        NSMutableAttributedString *dia =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: diaAttributeString];
        
        
        [dia addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
        [dia addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        
        
        wordsD6.spanLabel= dia;
    wordsD6.engLabel = @"Day";
    wordsD6.imgName = @"dia.jpg";
    [self.parablasArray addObject:wordsD6];
    
    Parablas *wordsD7 = [[Parablas alloc]init];
    wordsD7.spanLetter = @"Dd";
    wordsD7.engLetter = @"Nn";
    //wordsD7.spanLabel = @"DIEciNUEve";
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
        
        
        
        
        wordsD7.spanLabel = diecinueve;
    wordsD7.engLabel = @"Nineteen";
    wordsD7.imgName = @"diecinueve.jpg";
    [self.parablasArray addObject:wordsD7];
    
    Parablas *wordsD8 = [[Parablas alloc]init];
    wordsD8.spanLetter = @"Dd";
    wordsD8.engLetter = @"Ee";
    //wordsD8.spanLabel = @"DIEciOcho";
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
        
        
        wordsD8.spanLabel = dieciocho;
        
    wordsD8.engLabel = @"Eighteen";
    wordsD8.imgName = @"dieciocho.jpg";
    [self.parablasArray addObject:wordsD8];
    
    Parablas *wordsD9 = [[Parablas alloc]init];
    wordsD9.spanLetter = @"Dd";
    wordsD9.engLetter = @"Ss";
    //wordsD9.spanLabel = @"DIEciSEIS";
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
        
        
        
        wordsD9.spanLabel = dieciseis;
        
    wordsD9.engLabel = @"Sixteen";
    wordsD9.imgName = @"dieciseis.jpg";
    [self.parablasArray addObject:wordsD9];
    
    Parablas *wordsD10 = [[Parablas alloc]init];
    wordsD10.spanLetter = @"Dd";
    wordsD10.engLetter = @"Ss";
    //wordsD10.spanLabel = @"DIEciSIEte";
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
        
        
        wordsD10.spanLabel = diecisiete;
        
        
    wordsD10.engLabel = @"Seventeen";
    wordsD10.imgName = @"diecisiete.jpg";
    [self.parablasArray addObject:wordsD10];
    
    Parablas *wordsD11 = [[Parablas alloc]init];
    wordsD11.spanLetter = @"Dd";
    wordsD11.engLetter = @"Tt";
    //wordsD11.spanLabel = @"DIenTE";
        NSAttributedString *dienteAttributeString =[[NSAttributedString alloc]initWithString:@"Diente"];
        
        NSMutableAttributedString *diente =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dienteAttributeString];
        
        
        
        [diente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
        [diente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
        
        
        
        wordsD11.spanLabel = diente;
    wordsD11.engLabel = @"Tooth";
    wordsD11.imgName = @"diente.jpg";
    [self.parablasArray addObject:wordsD11];
    
    Parablas *wordsD12 = [[Parablas alloc]init];
    wordsD12.spanLetter = @"Dd";
    wordsD12.engLetter = @"Tt";
    //wordsD12.spanLabel = @"DIEZ";
        NSAttributedString *diezAttributeString =[[NSAttributedString alloc]initWithString:@"Diez"];
        
        NSMutableAttributedString *diez =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: diezAttributeString];
        
        
        
        
        
        
        wordsD12.spanLabel = diez;
        
    wordsD12.engLabel = @"Ten";
    wordsD12.imgName = @"diez.jpg";
    [self.parablasArray addObject:wordsD12];
    
    Parablas *wordsD13 = [[Parablas alloc]init];
    wordsD13.spanLetter = @"Dd";
    wordsD13.engLetter = @"Dd";
    //wordsD13.spanLabel = @"DInoSAUriO";
        NSAttributedString *dinosaurioAttributeString =[[NSAttributedString alloc]initWithString:@"Dinosaurio"];
        
        NSMutableAttributedString *dinosaurio =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dinosaurioAttributeString];
        
        
        
        [dinosaurio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
        [dinosaurio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
        [dinosaurio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(7, 1)];
        [dinosaurio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(8, 1)];
        [dinosaurio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(9, 1)];
        
        
        wordsD13.spanLabel = dinosaurio;
    wordsD13.engLabel = @"Dinosaur";
    wordsD13.imgName = @"dinosaurio.jpg";
    [self.parablasArray addObject:wordsD13];
    
    Parablas *wordsD14 = [[Parablas alloc]init];
    wordsD14.spanLetter = @"Dd";
    wordsD14.engLetter = @"Tt";
    //wordsD14.spanLabel = @"DOce";
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
        
        wordsD14.spanLabel = doce;
        
        
    wordsD14.engLabel = @"Twelve";
    wordsD14.imgName = @"doce.jpg";
    [self.parablasArray addObject:wordsD14];
    
    Parablas *wordsD15 = [[Parablas alloc]init];
    wordsD15.spanLetter = @"Dd";
    wordsD15.engLetter = @"Dd";
    //wordsD15.spanLabel = @"DOmiNÓ";
        NSAttributedString *dominóAttributeString =[[NSAttributedString alloc]initWithString:@"Dominó"];
        
        NSMutableAttributedString *dominó =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dominóAttributeString];
        
        
        [dominó addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
        [dominó addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
        wordsD15.spanLabel = dominó;
    wordsD15.engLabel = @"Domino";
    wordsD15.imgName = @"domino.jpg";
    [self.parablasArray addObject:wordsD15];
    
    Parablas *wordsD16 = [[Parablas alloc]init];
    wordsD16.spanLetter = @"Dd";
    wordsD16.engLetter = @"Tt";
    //wordsD16.spanLabel = @"DOS";
        NSAttributedString *dosAttributeString =[[NSAttributedString alloc]initWithString:@"Dos"];
        
        NSMutableAttributedString *dos =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dosAttributeString];
        
        
        wordsD16.spanLabel = dos;
        
        
        
        
        
    wordsD16.engLabel = @"Two";
    wordsD16.imgName = @"dos.jpg";
    [self.parablasArray addObject:wordsD16];
    
    Parablas *wordsD17 = [[Parablas alloc]init];
    wordsD17.spanLetter = @"Dd";
    wordsD17.engLetter = @"Dd";
    //wordsD17.spanLabel = @"DRAgón";
        NSAttributedString *dragónAttributeString =[[NSAttributedString alloc]initWithString:@"Dragón"];
        
        NSMutableAttributedString *dragón =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dragónAttributeString];
        
        
        
        [dragón addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
        [dragón addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
        [dragón addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(5, 1)];
        
        wordsD17.spanLabel = dragón;
    wordsD17.engLabel = @"Dragon";
    wordsD17.imgName = @"dragon.jpg";
    [self.parablasArray addObject:wordsD17];
    
    Parablas *wordsD18 = [[Parablas alloc]init];
    wordsD18.spanLetter = @"Dd";
    wordsD18.engLetter = @"Cc";
    //wordsD18.spanLabel = @"DULce";
        NSAttributedString *dulceAttributeString =[[NSAttributedString alloc]initWithString:@"dulce"];
        
        NSMutableAttributedString *dulce =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: dulceAttributeString];
        
        [dulce addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        [dulce addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
        wordsD18.spanLabel = dulce;
    wordsD18.engLabel = @"Candy";
    wordsD18.imgName = @"dulce.jpg";
    [self.parablasArray addObject:wordsD18];
    
    Parablas *wordsD19 = [[Parablas alloc]init];
    wordsD19.spanLetter = @"Dd";
    wordsD19.engLetter = @"Pp";
    //wordsD19.spanLabel = @"DUrazNO";
        NSAttributedString *duraznoAttributeString =[[NSAttributedString alloc]initWithString:@"Durazno"];
        
        NSMutableAttributedString *durazno =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: duraznoAttributeString];
        
        
        
        [durazno addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
        
        [durazno addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];

        
        wordsD19.spanLabel = durazno;
        
    wordsD19.engLabel = @"Peach";
    wordsD19.imgName = @"durazno.jpg";
    [self.parablasArray addObject:wordsD19];
    
        
    } if([self.appController.clickedString isEqualToString:@"E"]){
    
    Parablas *wordsE1 = [[Parablas alloc]init];
    wordsE1.spanLetter = @"Ee";
    wordsE1.engLetter = @"Bb";
    //wordsE1.spanLabel = @"EdiFIcio";
        NSAttributedString *edificioAttributeString =[[NSAttributedString alloc]initWithString:@"Edificio"];
        
        NSMutableAttributedString *edificio =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: edificioAttributeString];
        
        [edificio addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
        
        
        [edificio addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [edificio addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];
        [edificio addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        [edificio addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];
        wordsE1.spanLabel = edificio;
        wordsE1.engLabel = @"Building";
    wordsE1.imgName = @"edificio.jpg";
    [self.parablasArray addObject:wordsE1];


    Parablas *wordsE2 = [[Parablas alloc]init];
    wordsE2.spanLetter = @"Ee";
    wordsE2.engLetter = @"Aa";
    //wordsE2.spanLabel = @"Eje";
        NSAttributedString *ejeAttributeString =[[NSAttributedString alloc]initWithString:@"Eje"];
        
        NSMutableAttributedString *eje =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: ejeAttributeString];
        
        
        
        [eje addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
        [eje addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        
        
        
        wordsE2.spanLabel = eje;
    wordsE2.engLabel = @"Axle";
    wordsE2.imgName = @"eje.jpg";
    [self.parablasArray addObject:wordsE2];
    

    Parablas *wordsE3 = [[Parablas alloc]init];
    wordsE3.spanLetter = @"Ee";
    wordsE3.engLetter = @"Ee";
    //wordsE3.spanLabel = @"EleFANte";
        NSAttributedString *elefanteAttributeString =[[NSAttributedString alloc]initWithString:@"Elefante"];
        
        NSMutableAttributedString *elefante =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: elefanteAttributeString];
        
        
        
        [elefante addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
        [elefante addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [elefante addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        [elefante addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];
        
        
        
        
        wordsE3.spanLabel = elefante;
        
    wordsE3.engLabel = @"Elephant";
    wordsE3.imgName = @"elefante.jpg";
    [self.parablasArray addObject:wordsE3];
    
    Parablas *wordsE4 = [[Parablas alloc]init];
    wordsE4.spanLetter = @"Ee";
    wordsE4.engLetter = @"Dd";
    //wordsE4.spanLabel = @"EnaNO";
        NSAttributedString *enanoAttributeString =[[NSAttributedString alloc]initWithString:@"Enano"];
        
        NSMutableAttributedString *enano =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: enanoAttributeString];
        
        
        [enano addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
        [enano addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        
        
        wordsE4.spanLabel = enano;
    wordsE4.engLabel = @"Dwarf";
    wordsE4.imgName = @"enano.jpg";
    [self.parablasArray addObject:wordsE4];
    
    Parablas *wordsE5 = [[Parablas alloc]init];
    wordsE5.spanLetter = @"Ee";
    wordsE5.engLetter = @"Ll";
    //wordsE5.spanLabel = @"EScaLEra";
        NSAttributedString *escaleraAttributeString =[[NSAttributedString alloc]initWithString:@"Escalera"];
        
        NSMutableAttributedString *escalera =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: escaleraAttributeString];
        
        
        
        [escalera addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [escalera addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [escalera addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(6, 1)];
        [escalera addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(7, 1)];
        
        wordsE5.spanLabel = escalera;
    wordsE5.engLabel = @"Ladder";
    wordsE5.imgName = @"escalera.jpg";
    [self.parablasArray addObject:wordsE5];
    
    Parablas *wordsE6 = [[Parablas alloc]init];
    wordsE6.spanLetter = @"Ee";
    wordsE6.engLetter = @"Ss";
    //wordsE6.spanLabel = @"ESpaDA";
        NSAttributedString *espadaAttributeString =[[NSAttributedString alloc]initWithString:@"Espada"];
        
        NSMutableAttributedString *espada =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: espadaAttributeString];
        
        
        
        [espada addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [espada addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        wordsE6.spanLabel = espada;
    wordsE6.engLabel = @"Sword";
    wordsE6.imgName = @"espada.jpg";
    [self.parablasArray addObject:wordsE6];
    
    Parablas *wordsE7 = [[Parablas alloc]init];
    wordsE7.spanLetter = @"Ee";
    wordsE7.engLetter = @"Mm";
    //wordsE7.spanLabel = @"ESpeJO";
        NSAttributedString *espejoAttributeString =[[NSAttributedString alloc]initWithString:@"espejo"];
        
        NSMutableAttributedString *espejo =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: espejoAttributeString];
        
        
        [espejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [espejo addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        wordsE7.spanLabel = espejo;
    wordsE7.engLabel = @"Mirror";
    wordsE7.imgName = @"espejo.jpg";
    [self.parablasArray addObject:wordsE7];
    
    Parablas *wordsE8 = [[Parablas alloc]init];
    wordsE8.spanLetter = @"Ee";
    wordsE8.engLetter = @"Ss";
    //wordsE8.spanLabel = @"ESponJA";
        NSAttributedString *esponjaAttributeString =[[NSAttributedString alloc]initWithString:@"Esponja"];
        
        NSMutableAttributedString *esponja =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: esponjaAttributeString];
        
        
        
        
        
        [esponja addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [esponja addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        [esponja addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        
        wordsE8.spanLabel = esponja;
        
        
    wordsE8.engLabel = @"Sponge";
    wordsE8.imgName = @"esponja.jpg";
    [self.parablasArray addObject:wordsE8];
    
    Parablas *wordsE9 = [[Parablas alloc]init];
    wordsE9.spanLetter = @"Ee";
    wordsE9.engLetter = @"Ss";
    //wordsE9.spanLabel = @"EStaTUa";
        NSAttributedString *estatuaAttributeString =[[NSAttributedString alloc]initWithString:@"Estatua"];
        
        NSMutableAttributedString *estatua =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: estatuaAttributeString];
        
        
        [estatua addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [estatua addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        
        wordsE9.spanLabel = estatua;
    wordsE9.engLabel = @"Statue";
    wordsE9.imgName = @"estatua.jpg";
    [self.parablasArray addObject:wordsE9];
    
    Parablas *wordsE10 = [[Parablas alloc]init];
    wordsE10.spanLetter = @"Ee";
    wordsE10.engLetter = @"Ss";
    //wordsE10.spanLabel = @"EStreLLA";
        NSAttributedString *estrellaAttributeString =[[NSAttributedString alloc]initWithString:@"Estrella"];
        
        NSMutableAttributedString *estrella =
        [[NSMutableAttributedString alloc]
         initWithAttributedString: estrellaAttributeString];
        
        
        
        [estrella addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
        [estrella addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
        
        [estrella addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
        
        wordsE10.spanLabel = estrella;
        
    wordsE10.engLabel = @"Star";
    wordsE10.imgName = @"estrella.jpg";
    [self.parablasArray addObject:wordsE10];
    
    }
        
   if([self.appController.clickedString isEqualToString:@"F"]){
       
    Parablas *wordsF1 = [[Parablas alloc]init];
    wordsF1.spanLetter = @"Ff";
    wordsF1.engLetter = @"Ss";
    //wordsF1.spanLabel = @"FALda";
       NSAttributedString *faldaAttributeString =[[NSAttributedString alloc]initWithString:@"Falda"];
       
       NSMutableAttributedString *falda =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: faldaAttributeString];
       
       
       
       [falda addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [falda addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsF1.spanLabel = falda;
    wordsF1.engLabel = @"Skirt";
    wordsF1.imgName = @"falda.jpg";
    [self.parablasArray addObject:wordsF1];
    
    Parablas *wordsF2 = [[Parablas alloc]init];
    wordsF2.spanLetter = @"Ff";
    wordsF2.engLetter = @"Ll";
    //wordsF2.spanLabel = @"FAro";
       NSAttributedString *faroAttributeString =[[NSAttributedString alloc]initWithString:@"Faro"];
       
       NSMutableAttributedString *faro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: faroAttributeString];
       
       
       
       [faro addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [faro addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsF2.spanLabel = faro;
       
    wordsF2.engLabel = @"Lighthouse";
    wordsF2.imgName = @"faro.jpg";
    [self.parablasArray addObject:wordsF2];


    Parablas *wordsF3 = [[Parablas alloc]init];
    wordsF3.spanLetter = @"Ff";
    wordsF3.engLetter = @"Aa";
    //wordsF3.spanLabel = @"FLEcha";
       NSAttributedString *flechaAttributeString =[[NSAttributedString alloc]initWithString:@"Flecha"];
       
       NSMutableAttributedString *flecha =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: flechaAttributeString];
       
       
       
       [flecha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [flecha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [flecha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];
       
       wordsF3.spanLabel = flecha;
    wordsF3.engLabel = @"Arrow";
    wordsF3.imgName = @"flecha.jpg";
    [self.parablasArray addObject:wordsF3];
    
    Parablas *wordsF4 = [[Parablas alloc]init];
    wordsF4.spanLetter = @"Ff";
    wordsF4.engLetter = @"Ff";
    //wordsF4.spanLabel = @"FLOR";
       NSAttributedString *florAttributeString =[[NSAttributedString alloc]initWithString:@"Flor"];
       
       NSMutableAttributedString *flor =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: florAttributeString];
       
       
       
       
       
       
       
       wordsF4.spanLabel = flor;
    wordsF4.engLabel = @"Flower";
    wordsF4.imgName = @"flor.jpg";
    [self.parablasArray addObject:wordsF4];

    
    Parablas *wordsF5 = [[Parablas alloc]init];
    wordsF5.spanLetter = @"Ff";
    wordsF5.engLetter = @"Ss";
    //wordsF5.spanLabel = @"FOca";
       NSAttributedString *focaAttributeString =[[NSAttributedString alloc]initWithString:@"Foca"];
       
       NSMutableAttributedString *foca =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: focaAttributeString];
       
       
       
       [foca addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [foca addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsF5.spanLabel = foca;
    wordsF5.engLabel = @"Seal";
    wordsF5.imgName = @"foca.jpg";
    [self.parablasArray addObject:wordsF5];
    
    Parablas *wordsF6 = [[Parablas alloc]init];
    wordsF6.spanLetter = @"Ff";
    wordsF6.engLetter = @"Rr";
    //wordsF6.spanLabel = @"FRAMbueSA";
       NSAttributedString *frambuesaAttributeString =[[NSAttributedString alloc]initWithString:@"Frambuesa"];
       
       NSMutableAttributedString *frambuesa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: frambuesaAttributeString];
       
       
       
       [frambuesa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [frambuesa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];
       [frambuesa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(6, 1)];
       
       
       
       
       wordsF6.spanLabel = frambuesa;
       
    wordsF6.engLabel = @"Raspberry";
    wordsF6.imgName = @"frambuesa.jpg";
    [self.parablasArray addObject:wordsF6];
    
    Parablas *wordsF7 = [[Parablas alloc]init];
    wordsF7.spanLetter = @"Ff";
    wordsF7.engLetter = @"Ss";
    //wordsF7.spanLabel = @"FREsa";
       NSAttributedString *fresaAttributeString =[[NSAttributedString alloc]initWithString:@"Fresa"];
       
       NSMutableAttributedString *fresa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: fresaAttributeString];
       
       
       
       [fresa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [fresa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       wordsF7.spanLabel = fresa;
       
    wordsF7.engLabel = @"Strawberry";
    wordsF7.imgName = @"fresa.jpg";
    [self.parablasArray addObject:wordsF7];
    
    Parablas *wordsF8 = [[Parablas alloc]init];
    wordsF8.spanLetter = @"Ff";
    wordsF8.engLetter = @"Mm";
    //wordsF8.spanLabel = @"FUCsia";
       NSAttributedString *fucsiaAttributeString =[[NSAttributedString alloc]initWithString:@"Fucsia"];
       
       NSMutableAttributedString *fucsia =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: fucsiaAttributeString];
       
       
       
       [fucsia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [fucsia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [fucsia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];
       
       
       wordsF8.spanLabel= fucsia;
       
       
    wordsF8.engLabel = @"Magnet";
    wordsF8.imgName = @"fucsia.jpg";
    [self.parablasArray addObject:wordsF8];
    
    Parablas *wordsF9 = [[Parablas alloc]init];
    wordsF9.spanLetter = @"Ff";
    wordsF9.engLetter = @"Ff";
    //wordsF9.spanLabel = @"FUEgo";
       NSAttributedString *fuegoAttributeString =[[NSAttributedString alloc]initWithString:@"Fuego"];
       
       NSMutableAttributedString *fuego =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: fuegoAttributeString];
       
       
       
       [fuego addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [fuego addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsF9.spanLabel = fuego;
    wordsF9.engLabel = @"Fire";
    wordsF9.imgName = @"fuego.jpg";
    [self.parablasArray addObject:wordsF9];
    
    Parablas *wordsF10 = [[Parablas alloc]init];
    wordsF10.spanLetter = @"Ff";
    wordsF10.engLetter = @"Ff";
    //wordsF10.spanLabel = @"FUenTE";
       NSAttributedString *fuenteAttributeString =[[NSAttributedString alloc]initWithString:@"Fuente"];
       
       NSMutableAttributedString *fuente =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: fuenteAttributeString];
       
       
       
       [fuente addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [fuente addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsF10.spanLabel = fuente;
    wordsF10.engLabel = @"Fountain";
    wordsF10.imgName = @"fuente.jpg";
    [self.parablasArray addObject:wordsF10];
    
       
       
   } if([self.appController.clickedString isEqualToString:@"G"]){
       
       
    Parablas *wordsG1 = [[Parablas alloc]init];
    wordsG1.spanLetter = @"Gg";
    wordsG1.engLetter = @"Cc";
    //wordsG1.spanLabel = @"GAlleTA";
       NSAttributedString *galletaAttributeString =[[NSAttributedString alloc]initWithString:@"galleta"];
       
       NSMutableAttributedString *galleta =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: galletaAttributeString];
       
       
       [galleta addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [galleta addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [galleta addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       wordsG1.spanLabel = galleta;
       
       
    wordsG1.engLabel = @"Cookie";
    wordsG1.imgName = @"galleta.jpg";
    [self.parablasArray addObject:wordsG1];

    Parablas *wordsG2 = [[Parablas alloc]init];
    wordsG2.spanLetter = @"Gg";
    wordsG2.engLetter = @"Hh";
    //wordsG2.spanLabel = @"GAlliNA";
       NSAttributedString *gallinaAttributeString =[[NSAttributedString alloc]initWithString:@"gallina"];
       
       NSMutableAttributedString *gallina =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gallinaAttributeString];
       
       
       
       [gallina addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gallina addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [gallina addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsG2.spanLabel = gallina;
       
    wordsG2.engLabel = @"Hen";
    wordsG2.imgName = @"gallina.jpg";
    [self.parablasArray addObject:wordsG2];
    

    Parablas *wordsG3 = [[Parablas alloc]init];
    wordsG3.spanLetter = @"Gg";
    wordsG3.engLetter = @"Rr";
    //wordsG3.spanLabel = @"GAllo";
       NSAttributedString *galloAttributeString =[[NSAttributedString alloc]initWithString:@"Gallo"];
       
       NSMutableAttributedString *gallo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: galloAttributeString];
       
       
       [gallo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gallo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [gallo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4 ,1)];
       
       
       wordsG3.spanLabel = gallo;
       
    wordsG3.engLabel = @"Rooster";
    wordsG3.imgName = @"gallo.jpg";
    [self.parablasArray addObject:wordsG3];
    
    
    Parablas *wordsG4 = [[Parablas alloc]init];
    wordsG4.spanLetter = @"Gg";
    wordsG4.engLetter = @"Cc";
    //wordsG4.spanLabel = @"GAto";
       NSAttributedString *gatoAttributeString =[[NSAttributedString alloc]initWithString:@"Gato"];
       
       NSMutableAttributedString *gato =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gatoAttributeString];
       
       
       [gato addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gato addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsG4.spanLabel = gato;
    wordsG4.engLabel = @"Cat";
    wordsG4.imgName = @"gato.jpg";
    [self.parablasArray addObject:wordsG4];
    
    
    Parablas *wordsG5 = [[Parablas alloc]init];
    wordsG5.spanLetter = @"Gg";
    wordsG5.engLetter = @"Hh";
    //wordsG5.spanLabel = @"GAviLÁN";
       NSAttributedString *gavilánAttributeString =[[NSAttributedString alloc]initWithString:@"Gavilán"];
       
       NSMutableAttributedString *gavilán =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gavilánAttributeString];
       
       
       [gavilán addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gavilán addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsG5.spanLabel = gavilán;
    wordsG5.engLabel = @"Hawk";
    wordsG5.imgName = @"gavilan.jpg";
    [self.parablasArray addObject:wordsG5];
    
    
    
    Parablas *wordsG6 = [[Parablas alloc]init];
    wordsG6.spanLetter = @"Gg";
    wordsG6.engLetter = @"Ss";
    //wordsG6.spanLabel = @"GIraSOL";
       NSAttributedString *girasolAttributeString =[[NSAttributedString alloc]initWithString:@"Girasol"];
       
       NSMutableAttributedString *girasol =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: girasolAttributeString];
       
       
       
       [girasol addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [girasol addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsG6.spanLabel = girasol;
       
       
    wordsG6.engLabel = @"Sunflower";
    wordsG6.imgName = @"girasol.jpg";
    [self.parablasArray addObject:wordsG6];
    
    
    Parablas *wordsG7 = [[Parablas alloc]init];
    wordsG7.spanLetter = @"Gg";
    wordsG7.engLetter = @"Cc";
    //wordsG7.spanLabel = @"GOrra";
       NSAttributedString *gorraAttributeString =[[NSAttributedString alloc]initWithString:@"Gorra"];
       
       NSMutableAttributedString *gorra =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gorraAttributeString];
       
       
       
       
       [gorra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gorra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [gorra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       wordsG7.spanLabel = gorra;
       wordsG7.engLabel = @"Cap";
    wordsG7.imgName = @"gorra.jpg";
    [self.parablasArray addObject:wordsG7];
    
    Parablas *wordsG8 = [[Parablas alloc]init];
    wordsG8.spanLetter = @"Gg";
    wordsG8.engLetter = @"Dd";
    //wordsG8.spanLabel = @"GOta";
       NSAttributedString *gotaAttributeString =[[NSAttributedString alloc]initWithString:@"Gota"];
       
       NSMutableAttributedString *gota =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gotaAttributeString];
       
       
       
       
       [gota addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gota addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsG8.spanLabel = gota;
    wordsG8.engLabel = @"Drop";
    wordsG8.imgName = @"gota.jpg";
    [self.parablasArray addObject:wordsG8];
    
    Parablas *wordsG9 = [[Parablas alloc]init];
    wordsG9.spanLetter = @"Gg";
    wordsG9.engLetter = @"Gg";
    //wordsG9.spanLabel = @"GUanTE";
       NSAttributedString *guanteAttributeString =[[NSAttributedString alloc]initWithString:@"Guante"];
       
       NSMutableAttributedString *guante =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: guanteAttributeString];
       
       
       [guante addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [guante addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsG9.spanLabel = guante;
       
    wordsG9.engLabel = @"Glove";
    wordsG9.imgName = @"guante.jpg";
    [self.parablasArray addObject:wordsG9];
    
    Parablas *wordsG10 = [[Parablas alloc]init];
    wordsG10.spanLetter = @"Gg";
    wordsG10.engLetter = @"Ww";
    //wordsG10.spanLabel = @"GUErreRO";
       NSAttributedString *guerreroAttributeString =[[NSAttributedString alloc]initWithString:@"Guerrero"];
       
       NSMutableAttributedString *guerrero =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: guerreroAttributeString];
       
       
       
       [guerrero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [guerrero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [guerrero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];
       
       wordsG10.spanLabel = guerrero;
       
    wordsG10.engLabel = @"Warrior";
    wordsG10.imgName = @"guerrero.jpg";
    [self.parablasArray addObject:wordsG10];
    
    Parablas *wordsG11 = [[Parablas alloc]init];
    wordsG11.spanLetter = @"Gg";
    wordsG11.engLetter = @"Gg";
    //wordsG11.spanLabel = @"GUItaRRA";
       NSAttributedString *guitarraAttributeString =[[NSAttributedString alloc]initWithString:@"Guitarra"];
       
       NSMutableAttributedString *guitarra =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: guerreroAttributeString];
       
       
       
       [guitarra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [guitarra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       wordsG11.spanLabel = guitarra;
       
    wordsG11.engLabel = @"Guitar";
    wordsG11.imgName = @"guitarra.jpg";
    [self.parablasArray addObject:wordsG11];
    
    
    Parablas *wordsG12 = [[Parablas alloc]init];
    wordsG12.spanLetter = @"Gg";
    wordsG12.engLetter = @"Ww";
    //wordsG12.spanLabel = @"GUsaNO";
       NSAttributedString *gusanoAttributeString =[[NSAttributedString alloc]initWithString:@"Gusano"];
       
       NSMutableAttributedString *gusano =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: gusanoAttributeString];
       
       
       
       [gusano addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [gusano addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsG12.spanLabel = gusano;
    wordsG12.engLabel = @"Worm";
    wordsG12.imgName = @"gusano.jpg";
    [self.parablasArray addObject:wordsG12];
    
   }  if([self.appController.clickedString isEqualToString:@"H"]){
       
    Parablas *wordsH1 = [[Parablas alloc]init];
    wordsH1.spanLetter = @"Hh";
    wordsH1.engLetter = @"Aa";
    //wordsH1.spanLabel = @"HAcha";
       NSAttributedString *hachaAttributeString =[[NSAttributedString alloc]initWithString:@"Hacha"];
       
       NSMutableAttributedString *hacha =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: hachaAttributeString];
       
       [hacha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [hacha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [hacha addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       wordsH1.spanLabel = hacha;
    wordsH1.engLabel = @"Axe";
    wordsH1.imgName = @"hacha.jpg";
    [self.parablasArray addObject:wordsH1];
    
    Parablas *wordsH2 = [[Parablas alloc]init];
    wordsH2.spanLetter = @"Hh";
    wordsH2.engLetter = @"Ii";
    //wordsH2.spanLabel = @"HElaDO";
       NSAttributedString *heladoAttributeString =[[NSAttributedString alloc]initWithString:@"Helado"];
       
       NSMutableAttributedString *helado =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: heladoAttributeString];
       
       
       [helado addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [helado addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsH2.spanLabel = helado;
    wordsH2.engLabel = @"Ice Cream";
    wordsH2.imgName = @"helado.jpg";
    [self.parablasArray addObject:wordsH2];

    Parablas *wordsH3 = [[Parablas alloc]init];
    wordsH3.spanLetter = @"Hh";
    wordsH3.engLetter = @"Hh";
    //wordsH3.spanLabel = @"HEliCÓPteRO";
       
       NSAttributedString *helicópteroAttributeString =[[NSAttributedString alloc]initWithString:@"Helicóptero"];
       
       NSMutableAttributedString *helicóptero =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: helicópteroAttributeString];
       
       
       
       [helicóptero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [helicóptero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [helicóptero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(7, 1)];
       [helicóptero addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(8, 1)];
       
       
       
    wordsH3.engLabel = @"";
    wordsH3.imgName = @"helicoptero.jpg";
    [self.parablasArray addObject:wordsH3];

    Parablas *wordsH4 = [[Parablas alloc]init];
    wordsH4.spanLetter = @"Hh";
    wordsH4.engLetter = @"Ii";
       //wordsH4.spanLabel = @"HIElo";
       NSAttributedString *hieloAttributeString =[[NSAttributedString alloc]initWithString:@"Hielo"];
       
       NSMutableAttributedString *hielo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: hieloAttributeString];
       
       
       [hielo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [hielo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       wordsH4.spanLabel = hielo;
    wordsH4.engLabel = @"Ice";
    wordsH4.imgName = @"hielo.jpg";
    [self.parablasArray addObject:wordsH4];

    
    Parablas *wordsH5 = [[Parablas alloc]init];
    wordsH5.spanLetter = @"Hh";
    wordsH5.engLetter = @"Tt";
       //wordsH5.spanLabel = @"HIlo";
       NSAttributedString *hiloAttributeString =[[NSAttributedString alloc]initWithString:@"Hilo"];
       
       NSMutableAttributedString *hilo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: hiloAttributeString];
       
       [hilo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [hilo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsH5.spanLabel = hilo;
    wordsH5.engLabel = @"Thread";
    wordsH5.imgName = @"hilo.jpg";
    [self.parablasArray addObject:wordsH5];

    
    Parablas *wordsH6 = [[Parablas alloc]init];
    wordsH6.spanLetter = @"Hh";
    wordsH6.engLetter = @"Aa";
       //wordsH6.spanLabel = @"HORmiGA";
       NSAttributedString *hormigaAttributeString =[[NSAttributedString alloc]initWithString:@"Hormiga"];
       
       NSMutableAttributedString *hormiga =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: hormigaAttributeString];
       
       [hormiga addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [hormiga addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsH6.spanLabel = hormiga;
    wordsH6.engLabel = @"Ant";
    wordsH6.imgName = @"hormiga.jpg";
    [self.parablasArray addObject:wordsH6];

    
    Parablas *wordsH7 = [[Parablas alloc]init];
    wordsH7.spanLetter = @"Hh";
    wordsH7.engLetter = @"Ee";
       //wordsH7.spanLabel = @"HUEvo";
       NSAttributedString *huevoAttributeString =[[NSAttributedString alloc]initWithString:@"Huevo"];
       
       NSMutableAttributedString *huevo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: huevoAttributeString];
       
       
       
       [huevo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [huevo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsH7.spanLabel = huevo;
    wordsH7.engLabel = @"Egg";
    wordsH7.imgName = @"huevo.jpg";
    [self.parablasArray addObject:wordsH7];
       
   } if([self.appController.clickedString isEqualToString:@"I"]){
    
    Parablas *wordsI1 = [[Parablas alloc]init];
    wordsI1.spanLetter = @"Ii";
    wordsI1.engLetter = @"Cc";
       //wordsI1.spanLabel = @"IgleSIa";
       NSAttributedString *iglesiaAttributeString =[[NSAttributedString alloc]initWithString:@"Iglesia"];
       
       NSMutableAttributedString *iglesia =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: iglesiaAttributeString];
       
       
       [iglesia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(1, 1)];
       [iglesia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [iglesia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [iglesia addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(6, 1)];
       
       
       wordsI1.spanLabel = iglesia;

    wordsI1.engLabel = @"Church";
    wordsI1.imgName = @"iglesia.jpg";
    [self.parablasArray addObject:wordsI1];
    

    Parablas *wordsI2 = [[Parablas alloc]init];
    wordsI2.spanLetter = @"Ii";
    wordsI2.engLetter = @"Ii";
       //wordsI2.spanLabel = @"INdiO";
       NSAttributedString *indioAttributeString =[[NSAttributedString alloc]initWithString:@"Indio"];
       
       NSMutableAttributedString *indio =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: indioAttributeString];
       
       
       
       
       
       
       [indio addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [indio addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsI2.spanLabel = indio;

    wordsI2.engLabel = @"Indian";
    wordsI2.imgName = @"indio.jpg";
    [self.parablasArray addObject:wordsI2];
    
    Parablas *wordsI3 = [[Parablas alloc]init];
    wordsI3.spanLetter = @"Ii";
    wordsI3.engLetter = @"Ii";
       //wordsI3.spanLabel = @"ISTmo";
       NSAttributedString *istmoAttributeString =[[NSAttributedString alloc]initWithString:@"Istmo"];
       
       NSMutableAttributedString *istmo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: istmoAttributeString];
       
       
       
       [istmo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [istmo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];

       
       wordsI3.spanLabel = istmo;
    wordsI3.engLabel = @"Isthmus";
    wordsI3.imgName = @"istmo.jpg";
    [self.parablasArray addObject:wordsI3];
       
       
   } if([self.appController.clickedString isEqualToString:@"J"]){
    Parablas *wordsJ1 = [[Parablas alloc]init];
    wordsJ1.spanLetter = @"Jj";
    wordsJ1.engLetter = @"Ss";
       //wordsJ1.spanLabel = @"JAbón";
       NSAttributedString *jabónAttributeString =[[NSAttributedString alloc]initWithString:@"Jabón"];
       
       NSMutableAttributedString *jabón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jabónAttributeString];
       
       
       
       
       
       [jabón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [jabón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [jabón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       wordsJ1.spanLabel = jabón;
    wordsJ1.engLabel = @"Soap";
    wordsJ1.imgName = @"jabon.jpg";
    [self.parablasArray addObject:wordsJ1];
    
    
    Parablas *wordsJ2 = [[Parablas alloc]init];
    wordsJ2.spanLetter = @"Jj";
    wordsJ2.engLetter = @"Gg";
       //wordsJ2.spanLabel = @"JARdín";
       NSAttributedString *jardínAttributeString =[[NSAttributedString alloc]initWithString:@"Jardín"];
       
       NSMutableAttributedString *jardín =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jardínAttributeString];
       
       
       
       
       [jardín addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [jardín addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [jardín addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];

       wordsJ2.spanLabel = jardín;
    wordsJ2.engLabel = @"Garden";
    wordsJ2.imgName = @"jardin.jpg";
    [self.parablasArray addObject:wordsJ2];
    
    
    Parablas *wordsJ3 = [[Parablas alloc]init];
    wordsJ3.spanLetter = @"Jj";
    wordsJ3.engLetter = @"Jj";
       //wordsJ3.spanLabel = @"JArra";
       NSAttributedString *jarraAttributeString =[[NSAttributedString alloc]initWithString:@"Jarra"];
       
       NSMutableAttributedString *jarra =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jarraAttributeString];
       
       
       
       [jarra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [jarra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [jarra addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       wordsJ3.spanLabel = jarra;

    wordsJ3.engLabel = @"Jar";
    wordsJ3.imgName = @"jarra.jpg";
    [self.parablasArray addObject:wordsJ3];
    
    Parablas *wordsJ4 = [[Parablas alloc]init];
    wordsJ4.spanLetter = @"Jj";
    wordsJ4.engLetter = @"Vv";
       //wordsJ4.spanLabel = @"JArrón";
       NSAttributedString *jarrónAttributeString =[[NSAttributedString alloc]initWithString:@"Jarrón"];
       
       NSMutableAttributedString *jarrón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jarrónAttributeString];
       
       
       [jarrón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [jarrón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [jarrón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       [jarrón addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(5, 1)];
       wordsJ4.spanLabel = jarrón;

    wordsJ4.engLabel = @"Vase";
    wordsJ4.imgName = @"jarron.jpg";
    [self.parablasArray addObject:wordsJ4];
    
    Parablas *wordsJ5 = [[Parablas alloc]init];
    wordsJ5.spanLetter = @"Jj";
    wordsJ5.engLetter = @"Cc";
       //wordsJ5.spanLabel = @"JAuLA";
       NSAttributedString *jaulaAttributeString =[[NSAttributedString alloc]initWithString:@"Jaula"];
       
       NSMutableAttributedString *jaula =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jaulaAttributeString];
       
       [jaula addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       wordsJ5.spanLabel = jaula;

    wordsJ5.engLabel = @"Cage";
    wordsJ5.imgName = @"jaula.jpg";
    [self.parablasArray addObject:wordsJ5];
    
    Parablas *wordsJ6 = [[Parablas alloc]init];
    wordsJ6.spanLetter = @"Jj";
    wordsJ6.engLetter = @"Gg";
       //wordsJ6.spanLabel = @"JIraFA";
       NSAttributedString *jirafaAttributeString =[[NSAttributedString alloc]initWithString:@"Jirafa"];
       
       NSMutableAttributedString *jirafa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: jirafaAttributeString];

       
       [jirafa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [jirafa addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       wordsJ6.spanLabel= jirafa;
       
       
    wordsJ6.engLabel = @"Giraffe";
    wordsJ6.imgName = @"jirafa.jpg";
    [self.parablasArray addObject:wordsJ6];


    Parablas *wordsJ7 = [[Parablas alloc]init];
    wordsJ7.spanLetter = @"Jj";
    wordsJ7.engLetter = @"Jj";
       //wordsJ7.spanLabel = @"JUez";
       NSAttributedString *juezAttributeString =[[NSAttributedString alloc]initWithString:@"Juez"];
       
       NSMutableAttributedString *juez =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: juezAttributeString];
       
       
       
       [juez addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [juez addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsJ7.spanLabel = juez;

    wordsJ7.engLabel = @"Judge";
    wordsJ7.imgName = @"juez.jpg";
    [self.parablasArray addObject:wordsJ7];
       
   } if([self.appController.clickedString isEqualToString:@"K"]){

    Parablas *wordsK1 = [[Parablas alloc]init];
    wordsK1.spanLetter = @"Kk";
    wordsK1.engLetter = @"Kk";
       //wordsK1.spanLabel = @"KIlo";
       NSAttributedString *kiloAttributeString =[[NSAttributedString alloc]initWithString:@"Kilo"];
       
       NSMutableAttributedString *kilo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: kiloAttributeString];
       
       
       
       [kilo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [kilo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsK1.spanLabel = kilo;

    wordsK1.engLabel = @"Kilogram";
    wordsK1.imgName = @"kilo.jpg";
    [self.parablasArray addObject:wordsK1];

    Parablas *wordsK2 = [[Parablas alloc]init];
    wordsK2.spanLetter = @"Kk";
    wordsK2.engLetter = @"Kk";
       //wordsK2.spanLabel = @"KIwi";
       NSAttributedString *kiwiAttributeString =[[NSAttributedString alloc]initWithString:@"Kiwi"];
       
       NSMutableAttributedString *kiwi =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: kiwiAttributeString];
       
       
       
       [kiwi addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [kiwi addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];

       wordsK2.spanLabel = kiwi;
    wordsK2.engLabel = @"Kiwi";
    wordsK2.imgName = @"kiwi.jpg";
    [self.parablasArray addObject:wordsK2];

   } if([self.appController.clickedString isEqualToString:@"L"]){

    Parablas *wordsL1 = [[Parablas alloc]init];
    wordsL1.spanLetter = @"Ll";
    wordsL1.engLetter = @"Ll";
       //wordsL1.spanLabel = @"LAbiO";
       NSAttributedString *labioAttributeString =[[NSAttributedString alloc]initWithString:@"Labio"];
       
       NSMutableAttributedString *labio =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: labioAttributeString];
       
       
       
       
       [labio addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [labio addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       wordsL1.spanLabel = labio;
    wordsL1.engLabel = @"Lip";
    wordsL1.imgName = @"labio.jpg";
    [self.parablasArray addObject:wordsL1];
    

    Parablas *wordsL2 = [[Parablas alloc]init];
    wordsL2.spanLetter = @"Ll";
    wordsL2.engLetter = @"Ll";
       //wordsL2.spanLabel = @"LÁMpaRA";
       NSAttributedString *lámparaAttributeString =[[NSAttributedString alloc]initWithString:@"Lámpara"];
       
       NSMutableAttributedString *lámpara =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lámparaAttributeString];
       
       
       
       [lámpara addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       [lámpara addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       wordsL2.spanLabel = lámpara;
    wordsL2.engLabel = @"Lamp";
    wordsL2.imgName = @"lampara.jpg";
    [self.parablasArray addObject:wordsL2];

    Parablas *wordsL3 = [[Parablas alloc]init];
    wordsL3.spanLetter = @"Ll";
    wordsL3.engLetter = @"Pp";
       //wordsL3.spanLabel = @"LÁpiz";
       NSAttributedString *lápizAttributeString =[[NSAttributedString alloc]initWithString:@"Lápiz"];
       
       NSMutableAttributedString *lápiz =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lápizAttributeString];
       
       
       
       [lápiz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [lápiz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [lápiz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       wordsL3.spanLabel = lápiz;
    wordsL3.engLabel = @"Pencil";
    wordsL3.imgName = @"lapiz.jpg";
    [self.parablasArray addObject:wordsL3];
   
    
    Parablas *wordsL4 = [[Parablas alloc]init];
    wordsL4.spanLetter = @"Ll";
    wordsL4.engLetter = @"Ww";
       //wordsL4.spanLabel = @"LÁtiGO";
       NSAttributedString *látigoAttributeString =[[NSAttributedString alloc]initWithString:@"Látigo"];
       
       NSMutableAttributedString *látigo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: látigoAttributeString];
       
       
       
       [látigo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       [látigo addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       
       wordsL4.spanLabel = látigo;
       

    wordsL4.engLabel = @"Whip";
    wordsL4.imgName = @"latigo.jpg";
    [self.parablasArray addObject:wordsL4];


    Parablas *wordsL5 = [[Parablas alloc]init];
    wordsL5.spanLetter = @"Ll";
    wordsL5.engLetter = @"Mm";
       //wordsL5.spanLabel = @"LEche";
       NSAttributedString *lecheAttributeString =[[NSAttributedString alloc]initWithString:@"Leche"];
       
       NSMutableAttributedString *leche =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lecheAttributeString];
       
       
       [leche addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(2, 1)];
       [leche addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(3, 1)];
       [leche addAttribute:NSForegroundColorAttributeName
                      value:[UIColor blackColor]
                      range:NSMakeRange(4, 1)];
       
       wordsL5.spanLabel = leche;
    wordsL5.engLabel = @"Milk";
    wordsL5.imgName = @"leche.jpg";
    [self.parablasArray addObject:wordsL5];
 
    Parablas *wordsL6 = [[Parablas alloc]init];
    wordsL6.spanLetter = @"Ll";
    wordsL6.engLetter = @"Ll";
       //wordsL6.spanLabel = @"LEchuGA";
       NSAttributedString *lechugaAttributeString =[[NSAttributedString alloc]initWithString:@"Lechuga"];
       
       NSMutableAttributedString *lechuga =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lechugaAttributeString];
       
       
       
       
       
       [lechuga addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [lechuga addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [lechuga addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsL6.spanLabel = lechuga;
    wordsL6.engLabel = @"Lettuce";
    wordsL6.imgName = @"lechuga.jpg";
    [self.parablasArray addObject:wordsL6];

    Parablas *wordsL7 = [[Parablas alloc]init];
    wordsL7.spanLetter = @"Ll";
    wordsL7.engLetter = @"Tt";
       //wordsL7.spanLabel = @"LENgua";
       NSAttributedString *lenguaAttributeString =[[NSAttributedString alloc]initWithString:@"Lengua"];
       
       NSMutableAttributedString *lengua =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lenguaAttributeString];
       
       
       
       [lengua addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [lengua addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       [lengua addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
       
       
       wordsL7.spanLabel = lengua;
    wordsL7.engLabel = @"Tongue";
    wordsL7.imgName = @"lengua.jpg";
    [self.parablasArray addObject:wordsL7];


    Parablas *wordsL8 = [[Parablas alloc]init];
    wordsL8.spanLetter = @"Ll";
    wordsL8.engLetter = @"Ll";
       //wordsL8.spanLabel = @"LEón";
       NSAttributedString *leónAttributeString =[[NSAttributedString alloc]initWithString:@"León"];
       
       NSMutableAttributedString *león =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: leónAttributeString];
       
       
       
       
       [león addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [león addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       wordsL8.spanLabel = león;
    wordsL8.engLabel = @"Lion";
    wordsL8.imgName = @"leon.jpg";
    [self.parablasArray addObject:wordsL8];


    Parablas *wordsL9 = [[Parablas alloc]init];
    wordsL9.spanLetter = @"Ll";
    wordsL9.engLetter = @"Ll";
       //wordsL9.spanLabel = @"LEoPARdo";
       NSAttributedString *leopardoAttributeString =[[NSAttributedString alloc]initWithString:@"Leopardo"];
       
       NSMutableAttributedString *leopardo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: leopardoAttributeString];
       
       
       
       
       [leopardo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [leopardo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(6, 1)];
       
       [leopardo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(7, 1)];
       
       wordsL9.spanLabel = leopardo;

    wordsL9.engLabel = @"Leopard";
    wordsL9.imgName = @"leopardo.jpg";
    [self.parablasArray addObject:wordsL9];

    Parablas *wordsL10 = [[Parablas alloc]init];
    wordsL10.spanLetter = @"Ll";
    wordsL10.engLetter = @"Bb";
       //wordsL10.spanLabel = @"LIbro";
       NSAttributedString *libroAttributeString =[[NSAttributedString alloc]initWithString:@"Libro"];
       
       NSMutableAttributedString *libro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: libroAttributeString];
       
       
       
       [libro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [libro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       
       [libro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsL10.spanLabel = libro;
    wordsL10.engLabel = @"Book";
    wordsL10.imgName = @"libro.jpg";
    [self.parablasArray addObject:wordsL10];


    Parablas *wordsL11 = [[Parablas alloc]init];
    wordsL11.spanLetter = @"Ll";
    wordsL11.engLetter = @"Ll";
       //wordsL11.spanLabel = @"LImón";
       NSAttributedString *limónAttributeString =[[NSAttributedString alloc]initWithString:@"Limón"];
       
       NSMutableAttributedString *limón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: limónAttributeString];
       
       
       
       
       [limón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [limón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [limón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsL11.spanLabel = limón;
    wordsL11.engLabel = @"Lemon";
    wordsL11.imgName = @"limon.jpg";
    [self.parablasArray addObject:wordsL11];


    Parablas *wordsL12 = [[Parablas alloc]init];
    wordsL12.spanLetter = @"Ll";
    wordsL12.engLetter = @"Ll";
       //wordsL12.spanLabel = @"LINterNA";
       NSAttributedString *linternaAttributeString =[[NSAttributedString alloc]initWithString:@"Linterna"];
       
       NSMutableAttributedString *linterna =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: linternaAttributeString];
       
       
       
       
       [linterna addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [linterna addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       [linterna addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(55, 1)];

       wordsL12.spanLabel = linterna;
    wordsL12.engLabel = @"Lantern";
    wordsL12.imgName = @"linterna.jpg";
    [self.parablasArray addObject:wordsL12];


    Parablas *wordsL13 = [[Parablas alloc]init];
    wordsL13.spanLetter = @"Ll";
    wordsL13.engLetter = @"Kk";
       //wordsL13.spanLabel = @"LLAve";
       NSAttributedString *llaveAttributeString =[[NSAttributedString alloc]initWithString:@"Llave"];
       
       NSMutableAttributedString *llave =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: llaveAttributeString];
       
       
       
       [llave addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [llave addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       
       wordsL13.spanLabel = llave;
    wordsL13.engLabel = @"Key";
    wordsL13.imgName = @"llave.jpg";
    [self.parablasArray addObject:wordsL13];


    Parablas *wordsL14 = [[Parablas alloc]init];
    wordsL14.spanLetter = @"Ll";
    wordsL14.engLetter = @"Ww";
       //wordsL14.spanLabel = @"LObo";
       NSAttributedString *loboAttributeString =[[NSAttributedString alloc]initWithString:@"Lobo"];
       
       NSMutableAttributedString *lobo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: loboAttributeString];
       
       
       
       
       
       
       [lobo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [lobo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       wordsL14.spanLabel = lobo;

    wordsL14.engLabel = @"Wolf";
    wordsL14.imgName = @"lobo.jpg";
    [self.parablasArray addObject:wordsL14];


    Parablas *wordsL15 = [[Parablas alloc]init];
    wordsL15.spanLetter = @"Ll";
    wordsL15.engLetter = @"Pp";
       //wordsL15.spanLabel = @"LOro";
       NSAttributedString *loroAttributeString =[[NSAttributedString alloc]initWithString:@"Loro"];
       
       NSMutableAttributedString *loro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: loroAttributeString];
       
       
       
       [loro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [loro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsL15.spanLabel = loro;
       
    wordsL15.engLabel = @"Parrot";
    wordsL15.imgName = @"loro.jpg";
    [self.parablasArray addObject:wordsL15];

    Parablas *wordsL16 = [[Parablas alloc]init];
    wordsL16.spanLetter = @"Ll";
    wordsL16.engLetter = @"Mm";
       //wordsL16.spanLabel = @"LUna";
       NSAttributedString *lunaAttributeString =[[NSAttributedString alloc]initWithString:@"Luna"];
       
       NSMutableAttributedString *luna =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: lunaAttributeString];
       
       
       
       
       [luna addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [luna addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsL16.spanLabel = luna;
    wordsL16.engLabel = @"Moon";
    wordsL16.imgName = @"luna.jpg";
    [self.parablasArray addObject:wordsL16];


   } if([self.appController.clickedString isEqualToString:@"M"]){
    
       
       
    Parablas *wordsM1 = [[Parablas alloc]init];
    wordsM1.spanLetter = @"Mm";
    wordsM1.engLetter = @"Cc";
       //wordsM1.spanLabel = @"MAíz";
       NSAttributedString *maízAttributeString =[[NSAttributedString alloc]initWithString:@"Maíz"];
       
       NSMutableAttributedString *maíz =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: maízAttributeString];
       
       
       
       
       [maíz addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [maíz addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       
       wordsM1.spanLabel = maíz;
       

    wordsM1.engLabel = @"Corn";
    wordsM1.imgName = @"maiz.jpg";
    [self.parablasArray addObject:wordsM1];
    
    
    Parablas *wordsM2 = [[Parablas alloc]init];
    wordsM2.spanLetter = @"Mm";
    wordsM2.engLetter = @"Ss";
       //wordsM2.spanLabel = @"MAleTA";
       NSAttributedString *maletaAttributeString =[[NSAttributedString alloc]initWithString:@"Maleta"];
       
       NSMutableAttributedString *maleta =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: maletaAttributeString];
       
       
       
       
       [maleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [maleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       wordsM2.spanLabel = maleta;
    wordsM2.engLabel = @"Suitcase";
    wordsM2.imgName = @"maleta.jpg";
    [self.parablasArray addObject:wordsM2];
    
    
    Parablas *wordsM3 = [[Parablas alloc]init];
    wordsM3.spanLetter = @"Mm";
    wordsM3.engLetter = @"Mm";
       //wordsM3.spanLabel = @"MAmá";
       NSAttributedString *mamáAttributeString =[[NSAttributedString alloc]initWithString:@"Mamá"];
       
       NSMutableAttributedString *mamá =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: mamáAttributeString];
       
       
       
       
       [mamá addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [mamá addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsM3.spanLabel = mamá;
    wordsM3.engLabel = @"Mom";
    wordsM3.imgName = @"mama.jpg";
    [self.parablasArray addObject:wordsM3];
    
    
    Parablas *wordsM4 = [[Parablas alloc]init];
    wordsM4.spanLetter = @"Mm";
    wordsM4.engLetter = @"Aa";
       //wordsM4.spanLabel = @"MANzaNA";
       NSAttributedString *manzanaAttributeString =[[NSAttributedString alloc]initWithString:@"Manzana"];
       
       NSMutableAttributedString *manzana =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: manzanaAttributeString];

       
       
       
       
       [manzana addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [manzana addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsM4.spanLabel = manzana;
    wordsM4.engLabel = @"Apple";
    wordsM4.imgName = @"manzana.jpg";
    [self.parablasArray addObject:wordsM4];
    
    
    Parablas *wordsM5 = [[Parablas alloc]init];
    wordsM5.spanLetter = @"Mm";
    wordsM5.engLetter = @"Mm";
       //wordsM5.spanLabel = @"MAp";
       NSAttributedString *mapAttributeString =[[NSAttributedString alloc]initWithString:@"Map"];
       
       NSMutableAttributedString *map =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: mapAttributeString];

       
       
       [map addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       wordsM5.spanLabel = map;
    wordsM5.engLabel = @"Map";
    wordsM5.imgName = @"map.jpg";
    [self.parablasArray addObject:wordsM5];
    
    
    Parablas *wordsM6 = [[Parablas alloc]init];
    wordsM6.spanLetter = @"Mm";
    wordsM6.engLetter = @"Bb";
       //wordsM6.spanLabel = @"MAriPOsa";
       NSAttributedString *mariposaAttributeString =[[NSAttributedString alloc]initWithString:@"Mariposa"];
       
       NSMutableAttributedString *mariposa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: mariposaAttributeString];
       
       
       
       [mariposa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [mariposa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [mariposa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(6, 1)];
       
       [mariposa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(7, 1)];
       wordsM6.spanLabel = mariposa;
    wordsM6.engLabel = @"Butterfly";
    wordsM6.imgName = @"mariposa.jpg";
    [self.parablasArray addObject:wordsM6];
    
    
    Parablas *wordsM7 = [[Parablas alloc]init];
    wordsM7.spanLetter = @"Mm";
    wordsM7.engLetter = @"Bb";
       //wordsM7.spanLabel = @"MArrón";
       NSAttributedString *marrónAttributeString =[[NSAttributedString alloc]initWithString:@"Marrón"];
       
       NSMutableAttributedString *marrón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: marrónAttributeString];
       
       
       
       
       [marrón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [marrón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [marrón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       [marrón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
       
       
       
       wordsM7.spanLabel = marrón;
    wordsM7.engLabel = @"Brown";
    wordsM7.imgName = @"marron.jpg";
    [self.parablasArray addObject:wordsM7];
    
    
    Parablas *wordsM8 = [[Parablas alloc]init];
    wordsM8.spanLetter = @"Mm";
    wordsM8.engLetter = @"Hh";
       //wordsM8.spanLabel = @"MARtiLLO";
       NSAttributedString *martilloAttributeString =[[NSAttributedString alloc]initWithString:@"Martillo"];
       
       NSMutableAttributedString *martillo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: martilloAttributeString];
       
       
       
       
       
       [martillo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [martillo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsM8.spanLabel = martillo;

    wordsM8.engLabel = @"Hammer";
    wordsM8.imgName = @"martillo.jpg";
    [self.parablasArray addObject:wordsM8];
    
    
    Parablas *wordsM9 = [[Parablas alloc]init];
    wordsM9.spanLetter = @"Mm";
    wordsM9.engLetter = @"Mm";
       //wordsM9.spanLabel = @"MElón";
       NSAttributedString *melónAttributeString =[[NSAttributedString alloc]initWithString:@"Melón"];
       
       NSMutableAttributedString *melón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: melónAttributeString];
       
       
       
       
       
       [melón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [melón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [melón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];

       wordsM9.spanLabel = melón;
    wordsM9.engLabel = @"Melon";
    wordsM9.imgName = @"melon.jpg";
    [self.parablasArray addObject:wordsM9];
    
    
    Parablas *wordsM10 = [[Parablas alloc]init];
    wordsM10.spanLetter = @"Mm";
    wordsM10.engLetter = @"Tt";
       //wordsM10.spanLabel = @"MEsa";
       NSAttributedString *mesaAttributeString =[[NSAttributedString alloc]initWithString:@"Mesa"];
       
       NSMutableAttributedString *mesa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: mesaAttributeString];
       
       
       
       [mesa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [mesa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsM10.spanLabel = mesa;
    wordsM10.engLabel = @"Table";
    wordsM10.imgName = @"mesa.jpg";
    [self.parablasArray addObject:wordsM10];
    
    
    Parablas *wordsM11 = [[Parablas alloc]init];
    wordsM11.spanLetter = @"Mm";
    wordsM11.engLetter = @"Mm";
       //wordsM11.spanLabel = @"MOno";
       NSAttributedString *monoAttributeString =[[NSAttributedString alloc]initWithString:@"Mono"];
       
       NSMutableAttributedString *mono =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: monoAttributeString];
       
       
       
       
       [mono addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [mono addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsM11.spanLabel= mono;
       wordsM11.engLabel = @"Monkey";
    wordsM11.imgName = @"mono.jpg";
    [self.parablasArray addObject:wordsM11];
    
    
    Parablas *wordsM12 = [[Parablas alloc]init];
    wordsM12.spanLetter = @"Mm";
    wordsM12.engLetter = @"Mm";
       //wordsM12.spanLabel = @"MONtaÑA";
       NSAttributedString *montañaAttributeString =[[NSAttributedString alloc]initWithString:@"Montaña"];
       
       NSMutableAttributedString *montaña =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: montañaAttributeString];
       
       
       
       [montaña addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [montaña addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsM12.spanLabel = montaña;
    wordsM12.engLabel = @"Mountain";
    wordsM12.imgName = @"montana.jpg";
    [self.parablasArray addObject:wordsM12];
    
    
    Parablas *wordsM13 = [[Parablas alloc]init];
    wordsM13.spanLetter = @"Mm";
    wordsM13.engLetter = @"Bb";
       //wordsM13.spanLabel = @"MOra";
       NSAttributedString *moraAttributeString =[[NSAttributedString alloc]initWithString:@"Mora"];
       
       NSMutableAttributedString *mora =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: moraAttributeString];
       
       
       
       
       [mora addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [mora addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       wordsM13.spanLabel = mora;
    wordsM13.engLabel = @"Blackberry";
    wordsM13.imgName = @"mora.jpg";
    [self.parablasArray addObject:wordsM13];
    
    
    Parablas *wordsM14 = [[Parablas alloc]init];
    wordsM14.spanLetter = @"Mm";
    wordsM14.engLetter = @"Mm";
       //wordsM14.spanLabel = @"MOtoCIcleTA";
       NSAttributedString *motocicletaAttributeString =[[NSAttributedString alloc]initWithString:@"Motocicleta"];
       
       NSMutableAttributedString *motocicleta =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: motocicletaAttributeString];
       
       
       
       [motocicleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [motocicleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [motocicleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(6, 1)];
       
       [motocicleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(7, 1)];
       
       [motocicleta addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(8, 1)];
       wordsM14.spanLabel = motocicleta;

    wordsM14.engLabel = @"Motorcycle";
    wordsM14.imgName = @"motocicleta.jpg";
    [self.parablasArray addObject:wordsM14];
    
   } if([self.appController.clickedString isEqualToString:@"N"]){

    Parablas *wordsN1 = [[Parablas alloc]init];
    wordsN1.spanLetter = @"Nn";
    wordsN1.engLetter = @"Oo";
       //wordsN1.spanLabel = @"NAranJA";
       NSAttributedString *naranjaAttributeString =[[NSAttributedString alloc]initWithString:@"Naranja"];
       
       NSMutableAttributedString *naranja =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: naranjaAttributeString];
       
       
       
       [naranja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [naranja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [naranja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsN1.spanLabel = naranja;
    wordsN1.engLabel = @"Orange";
    wordsN1.imgName = @"naranja.jpg";
    [self.parablasArray addObject:wordsN1];

    Parablas *wordsN2 = [[Parablas alloc]init];
    wordsN2.spanLetter = @"Nn";
    wordsN2.engLetter = @"Nn";
       //wordsN2.spanLabel = @"NAriz";
       NSAttributedString *narizAttributeString =[[NSAttributedString alloc]initWithString:@"Nariz"];
       
       NSMutableAttributedString *nariz =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: narizAttributeString];
       
       
       
       [nariz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       
       [nariz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [nariz addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsN2.spanLabel = nariz;
    wordsN2.engLabel = @"Nose";
    wordsN2.imgName = @"nariz.jpg";
    [self.parablasArray addObject:wordsN2];
    
    Parablas *wordsN3 = [[Parablas alloc]init];
    wordsN3.spanLetter = @"Nn";
    wordsN3.engLetter = @"Bb";
       //wordsN3.spanLabel = @"NEgro";
       NSAttributedString *negroAttributeString =[[NSAttributedString alloc]initWithString:@"Negro"];
       
       NSMutableAttributedString *negro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: negroAttributeString];
       
       
       
       [negro addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       
       [negro addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [negro addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       
       
       
       wordsN3.spanLabel = negro;
    wordsN3.engLabel = @"Black";
    wordsN3.imgName = @"negro.jpg";
    [self.parablasArray addObject:wordsN3];
    
    Parablas *wordsN4 = [[Parablas alloc]init];
    wordsN4.spanLetter = @"Nn";
    wordsN4.engLetter = @"Bb";
       //wordsN4.spanLabel = @"NEné";
       NSAttributedString *nenéAttributeString =[[NSAttributedString alloc]initWithString:@"Nené"];
       
       NSMutableAttributedString *nené =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: nenéAttributeString];
       
       
       
       
       [nené addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       
       [nené addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       wordsN4.spanLabel = nené;
    wordsN4.engLabel = @"Baby";
    wordsN4.imgName = @"nene.jpg";
    [self.parablasArray addObject:wordsN4];
    
    Parablas *wordsN5 = [[Parablas alloc]init];
    wordsN5.spanLetter = @"Nn";
    wordsN5.engLetter = @"Nn";
       //wordsN5.spanLabel = @"NIdo";
       NSAttributedString *nidoAttributeString =[[NSAttributedString alloc]initWithString:@"Nido"];
       
       NSMutableAttributedString *nido =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: nidoAttributeString];
       
       
       
       [nido addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       
       [nido addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       wordsN5.spanLabel = nido;
    wordsN5.engLabel = @"Nest";
    wordsN5.imgName = @"nido.jpg";
    [self.parablasArray addObject:wordsN5];
    
    Parablas *wordsN6 = [[Parablas alloc]init];
    wordsN6.spanLetter = @"Nn";
    wordsN6.engLetter = @"Ss";
       //wordsN6.spanLabel = @"NIEve";
       NSAttributedString *nieveAttributeString =[[NSAttributedString alloc]initWithString:@"Nieve"];
       
       NSMutableAttributedString *nieve =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: nieveAttributeString];
       
       
       
       [nieve addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [nieve addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       wordsN6.spanLabel = nieve;
    wordsN6.engLabel = @"Snow";
    wordsN6.imgName = @"nieve.jpg";
    [self.parablasArray addObject:wordsN6];
    
    Parablas *wordsN7 = [[Parablas alloc]init];
    wordsN7.spanLetter = @"Nn";
    wordsN7.engLetter = @"Cc";
       //wordsN7.spanLabel = @"NUbe";
       NSAttributedString *nubeAttributeString =[[NSAttributedString alloc]initWithString:@"Nube"];
       
       NSMutableAttributedString *nube =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: nubeAttributeString];
       
       
       
       [nube addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
       
       [nube addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];

       wordsN7.spanLabel = nube;
    wordsN7.engLabel = @"Cloud";
    wordsN7.imgName = @"nube.jpg";
    [self.parablasArray addObject:wordsN7];
    
    Parablas *wordsN8 = [[Parablas alloc]init];
    wordsN8.spanLetter = @"Nn";
    wordsN8.engLetter = @"Nn";
       //wordsN8.spanLabel = @"NUEve";
       NSAttributedString *nueveAttributeString =[[NSAttributedString alloc]initWithString:@"Nueve"];
       
       NSMutableAttributedString *nueve =
       [[NSMutableAttributedString alloc]
        initWithAttributedString:nueveAttributeString];
       
       
       
       [nueve addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [nueve addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       wordsN8.spanLabel = nueve;
    wordsN8.engLabel = @"Nine";
    wordsN8.imgName = @"nueve.jpg";
    [self.parablasArray addObject:wordsN8];

   } if([self.appController.clickedString isEqualToString:@"Ñ"]){

    Parablas *wordsÑ1 = [[Parablas alloc]init];
    wordsÑ1.spanLetter = @"Ññ";
    wordsÑ1.engLetter = @"Rr";
       //wordsÑ1.spanLabel = @"ÑANdú";
       NSAttributedString *ñandúAttributeString =[[NSAttributedString alloc]initWithString:@"Ñandú"];
       
       NSMutableAttributedString *ñandú =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: ñandúAttributeString];
       
       
       
       
       [ñandú addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
       
       [ñandú addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(4, 1)];
       wordsÑ1.spanLabel =ñandú;
    wordsÑ1.engLabel = @"Rhea";
    wordsÑ1.imgName = @"nandu.jpg";
    [self.parablasArray addObject:wordsÑ1];
    
   } if([self.appController.clickedString isEqualToString:@"O"]){

    Parablas *wordsO1 = [[Parablas alloc]init];
    wordsO1.spanLetter = @"Oo";
    wordsO1.engLetter = @"Ee";
       //wordsO1.spanLabel = @"Ocho";
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

       
       wordsO1.spanLabel=ocho;
    wordsO1.engLabel = @"Eight";
    wordsO1.imgName = @"ocho.jpg";
    [self.parablasArray addObject:wordsO1];
    

    Parablas *wordsO2 = [[Parablas alloc]init];
    wordsO2.spanLetter = @"Oo";
    wordsO2.engLetter = @"Ee";
       //wordsO2.spanLabel = @"Ojo";
       NSAttributedString *ojoAttributeString =[[NSAttributedString alloc]initWithString:@"Ojo"];
       
       NSMutableAttributedString *ojo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: ojoAttributeString];
       
       
       
       [ojo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [ojo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO2.spanLabel = ojo;

    wordsO2.engLabel = @"Eye";
    wordsO2.imgName = @"ojo.jpg";
    [self.parablasArray addObject:wordsO2];

    Parablas *wordsO3 = [[Parablas alloc]init];
    wordsO3.spanLetter = @"Oo";
    wordsO3.engLetter = @"Ww";
       //wordsO3.spanLabel = @"Ola";
       NSAttributedString *olaAttributeString =[[NSAttributedString alloc]initWithString:@"Ola"];
       
       NSMutableAttributedString *ola =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: olaAttributeString];
       
       
       
       
       [ola addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [ola addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO3.spanLabel = ola;
    wordsO3.engLabel = @"Wave";
    wordsO3.imgName = @"ola.jpg";
    [self.parablasArray addObject:wordsO3];


    Parablas *wordsO4 = [[Parablas alloc]init];
    wordsO4.spanLetter = @"Oo";
    wordsO4.engLetter = @"Oo";
       //wordsO4.spanLabel = @"OliVO";
       NSAttributedString *olivoAttributeString =[[NSAttributedString alloc]initWithString:@"Olivo"];
       
       NSMutableAttributedString *olivo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: olivoAttributeString];
       
       
       
       [olivo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [olivo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO4.spanLabel = olivo;
    wordsO4.engLabel = @"Olive";
    wordsO4.imgName = @"olivo.jpg";
    [self.parablasArray addObject:wordsO4];


    Parablas *wordsO5 = [[Parablas alloc]init];
    wordsO5.spanLetter = @"Oo";
    wordsO5.engLetter = @"Pp";
       //wordsO5.spanLabel = @"Olla";
       NSAttributedString *ollaAttributeString =[[NSAttributedString alloc]initWithString:@"Olla"];
       
       NSMutableAttributedString *olla =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: ollaAttributeString];
       
       
       
       [olla addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [olla addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [olla addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

       
       
       
       wordsO5.spanLabel = olla;
    wordsO5.engLabel = @"Pot";
    wordsO5.imgName = @"olla.jpg";
    [self.parablasArray addObject:wordsO5];

    Parablas *wordsO6 = [[Parablas alloc]init];
    wordsO6.spanLetter = @"Oo";
    wordsO6.engLetter = @"Ee";
       //wordsO6.spanLabel = @"Once";
       NSAttributedString *onceAttributeString =[[NSAttributedString alloc]initWithString:@"Once"];
       
       NSMutableAttributedString *once =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: onceAttributeString];
       
       
       
       
       [once addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [once addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [once addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

       
       
       
       wordsO6.spanLabel = once;

    wordsO6.engLabel = @"Eleven";
    wordsO6.imgName = @"once.jpg";
    [self.parablasArray addObject:wordsO6];

    
    Parablas *wordsO7 = [[Parablas alloc]init];
    wordsO7.spanLetter = @"Oo";
    wordsO7.engLetter = @"Ee";
       //wordsO7.spanLabel = @"OreJA";
       NSAttributedString *orejaAttributeString =[[NSAttributedString alloc]initWithString:@"Oreja"];
       
       NSMutableAttributedString *oreja =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: orejaAttributeString];
       
       
       
       [oreja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [oreja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       
       wordsO7.spanLabel = oreja;
    wordsO7.engLabel = @"Ear";
    wordsO7.imgName = @"oreja.jpg";
    [self.parablasArray addObject:wordsO7];


    Parablas *wordsO8 = [[Parablas alloc]init];
    wordsO8.spanLetter = @"Oo";
    wordsO8.engLetter = @"gg";
       //wordsO8.spanLabel = @"Oro";
       NSAttributedString *oroAttributeString =[[NSAttributedString alloc]initWithString:@"Oro"];
       
       NSMutableAttributedString *oro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: oroAttributeString];
       
       
       [oro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [oro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO8.spanLabel = oro;
    wordsO8.engLabel = @"Gold";
    wordsO8.imgName = @"oro.jpg";
    [self.parablasArray addObject:wordsO8];
 
    
    Parablas *wordsO9 = [[Parablas alloc]init];
    wordsO9.spanLetter = @"Oo";
    wordsO9.engLetter = @"Oo";
       //wordsO9.spanLabel = @"ORquíDEA";
       NSAttributedString *orquídeaAttributeString =[[NSAttributedString alloc]initWithString:@"Orquídea"];
       
       NSMutableAttributedString *orquídea =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: orquídeaAttributeString];
       
       
       
       
       [orquídea addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [orquídea addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       [orquídea addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];

       wordsO9.spanLabel = orquídea;
    wordsO9.engLabel = @"Orchid";
    wordsO9.imgName = @".jpg";
    [self.parablasArray addObject:wordsO9];

    
    Parablas *wordsO10 = [[Parablas alloc]init];
    wordsO10.spanLetter = @"Oo";
    wordsO10.engLetter = @"Cc";
       //wordsO10.spanLabel = @"OruGA";
       NSAttributedString *orugaAttributeString =[[NSAttributedString alloc]initWithString:@"Oruga"];
       
       NSMutableAttributedString *oruga =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: orugaAttributeString];
       
       
       [oruga addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [oruga addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO10.spanLabel = oruga;
    wordsO10.engLabel = @"Caterpiller";
    wordsO10.imgName = @"oruga.jpg";
    [self.parablasArray addObject:wordsO10];

    
    Parablas *wordsO11 = [[Parablas alloc]init];
    wordsO11.spanLetter = @"Oo";
    wordsO11.engLetter = @"Bb";
       //wordsO11.spanLabel = @"Oso";
       NSAttributedString *osoAttributeString =[[NSAttributedString alloc]initWithString:@"Oso"];
       
       NSMutableAttributedString *oso =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: osoAttributeString];
       
       
       
       [oso addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [oso addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       wordsO11.spanLabel = oso;
    wordsO11.engLabel = @"Bear";
    wordsO11.imgName = @"oso.jpg";
    [self.parablasArray addObject:wordsO11];

    Parablas *wordsO12 = [[Parablas alloc]init];
    wordsO12.spanLetter = @"Oo";
    wordsO12.engLetter = @"Ss";
       //wordsO12.spanLabel = @"OveJA";
       NSAttributedString *ovejaAttributeString =[[NSAttributedString alloc]initWithString:@"Oveja"];
       
       NSMutableAttributedString *oveja =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: ovejaAttributeString];

       
       [oveja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(1, 1)];
       
       [oveja addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];

       
       wordsO12.spanLabel = oveja;
       wordsO12.engLabel = @"Sheep";
    wordsO12.imgName = @"oveja.jpg";
    [self.parablasArray addObject:wordsO12];

   } if([self.appController.clickedString isEqualToString:@"P"]){
    
    Parablas *wordsP1 = [[Parablas alloc]init];
    wordsP1.spanLetter = @"Pp";
    wordsP1.engLetter = @"Bb";
       //wordsP1.spanLabel = @"PÁjaRO";
       NSAttributedString *pájaroAttributeString =[[NSAttributedString alloc]initWithString:@"Pájaro"];
       
       NSMutableAttributedString *pájaro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pájaroAttributeString];
       
       
       
       
       [pájaro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       
       [pájaro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

       wordsP1.spanLabel = pájaro;
    wordsP1.engLabel = @"Bird";
    wordsP1.imgName = @"pajaro.jpg";
    [self.parablasArray addObject:wordsP1];
    
    
    Parablas *wordsP2 = [[Parablas alloc]init];
    wordsP2.spanLetter = @"Pp";
    wordsP2.engLetter = @"Bb";
       //wordsP2.spanLabel = @"PAN";
       NSAttributedString *panAttributeString =[[NSAttributedString alloc]initWithString:@"Pan"];
       
       NSMutableAttributedString *pan =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: panAttributeString];
       
       wordsP2.spanLabel = pan;
       wordsP2.engLabel = @"Bread";
    wordsP2.imgName = @"pan.jpg";
    [self.parablasArray addObject:wordsP2];

    
    Parablas *wordsP3 = [[Parablas alloc]init];
    wordsP3.spanLetter = @"Pp";
    wordsP3.engLetter = @"Pp";
       //wordsP3.spanLabel = @"PANda";
       NSAttributedString *pandaAttributeString =[[NSAttributedString alloc]initWithString:@"Panda"];
       
       NSMutableAttributedString *panda =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pandaAttributeString];
       
       
       
       [panda addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [panda addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsP3.spanLabel = panda;
    wordsP3.engLabel = @"Panda";
    wordsP3.imgName = @"panda.jpg";
    [self.parablasArray addObject:wordsP3];

    
    Parablas *wordsP4 = [[Parablas alloc]init];
    wordsP4.spanLetter = @"Pp";
    wordsP4.engLetter = @"Pp";
       //wordsP4.spanLabel = @"PANtaLÓN";
       NSAttributedString *pantalónAttributeString =[[NSAttributedString alloc]initWithString:@"Pantalón"];
       
       NSMutableAttributedString *pantalón =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pantalónAttributeString];
       
       
       
       
       [pantalón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pantalón addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       
       
       wordsP4.spanLabel = pantalón;
    wordsP4.engLabel = @"";
    wordsP4.imgName = @".jpg";
    [self.parablasArray addObject:wordsP4];

    Parablas *wordsP5 = [[Parablas alloc]init];
    wordsP5.spanLetter = @"Pp";
    wordsP5.engLetter = @"Pp";
       //wordsP5.spanLabel = @"PANteRA";
       NSAttributedString *panteraAttributeString =[[NSAttributedString alloc]initWithString:@"Pantera"];
       
       NSMutableAttributedString *pantera =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: panteraAttributeString];
       
       
       [pantera addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pantera addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       
       wordsP5.spanLabel = pantera;
    wordsP5.engLabel = @"Panther";
    wordsP5.imgName = @"pantera.jpg";
    [self.parablasArray addObject:wordsP5];

    Parablas *wordsP6 = [[Parablas alloc]init];
    wordsP6.spanLetter = @"Pp";
    wordsP6.engLetter = @"Pp";
       //wordsP6.spanLabel = @"PApa";
       NSAttributedString *papaAttributeString =[[NSAttributedString alloc]initWithString:@"Papa"];
       
       NSMutableAttributedString *papa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: papaAttributeString];
       
       
       [papa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [papa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       wordsP6.spanLabel = papa;

    wordsP6.engLabel = @"Potato";
    wordsP6.imgName = @"papa.jpg";
    [self.parablasArray addObject:wordsP6];

    
    Parablas *wordsP7 = [[Parablas alloc]init];
    wordsP7.spanLetter = @"Pp";
    wordsP7.engLetter = @"Dd";
       //wordsP7.spanLabel = @"PApá";
       NSAttributedString *papáAttributeString =[[NSAttributedString alloc]initWithString:@"Papá"];
       
       NSMutableAttributedString *papá =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: papáAttributeString];
       
       
       [papá addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [papá addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

       wordsP7.spanLabel = papá;
    wordsP7.engLabel = @"Dad";
    wordsP7.imgName = @"papaa.jpg";
    [self.parablasArray addObject:wordsP7];

    Parablas *wordsP8 = [[Parablas alloc]init];
    wordsP8.spanLetter = @"Pp";
    wordsP8.engLetter = @"Kk";
       //wordsP8.spanLabel = @"PApaGAyo";
       NSAttributedString *papagayoAttributeString =[[NSAttributedString alloc]initWithString:@"Papagayo"];
       
       NSMutableAttributedString *papagayo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: papagayoAttributeString];
       
       
       [papagayo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [papagayo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [papagayo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(6, 1)];
       [papagayo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(7, 1)];

       wordsP8.spanLabel = papagayo;
    wordsP8.engLabel = @"Papaya";
    wordsP8.imgName = @"papagayo.jpg";
    [self.parablasArray addObject:wordsP8];

    
    Parablas *wordsP9 = [[Parablas alloc]init];
    wordsP9.spanLetter = @"Pp";
    wordsP9.engLetter = @"Pp";
       //wordsP9.spanLabel = @"PAraCAíDAS";
       NSAttributedString *paracaídasAttributeString =[[NSAttributedString alloc]initWithString:@"Paracaídas"];
       
       NSMutableAttributedString *paracaídas =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: paracaídasAttributeString];
       
       
       [paracaídas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [paracaídas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [paracaídas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(6, 1)];
       
       
       wordsP9.spanLabel = paracaídas;
       wordsP9.engLabel = @"Parachute";
    wordsP9.imgName = @"paracaidas.jpg";
    [self.parablasArray addObject:wordsP9];

    
    Parablas *wordsP10 = [[Parablas alloc]init];
    wordsP10.spanLetter = @"Pp";
    wordsP10.engLetter = @"Uu";
       //wordsP10.spanLabel = @"PAraGUAS";
       NSAttributedString *paraguasAttributeString =[[NSAttributedString alloc]initWithString:@"Paraguas"];
       
       NSMutableAttributedString *paraguas =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: paraguasAttributeString];
       
       
       [paraguas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [paraguas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsP10.spanLabel = paraguas;
    wordsP10.engLabel = @"Umbrella";
    wordsP10.imgName = @"paraguas.jpg";
    [self.parablasArray addObject:wordsP10];

    Parablas *wordsP11 = [[Parablas alloc]init];
    wordsP11.spanLetter = @"Pp";
    wordsP11.engLetter = @"Dd";
       //wordsP11.spanLabel = @"PAto";
       NSAttributedString *patoAttributeString =[[NSAttributedString alloc]initWithString:@"Pato"];
       
       NSMutableAttributedString *pato =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: patoAttributeString];

       
       [pato addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pato addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       wordsP11.spanLabel = pato;
    wordsP11.engLabel = @"Duck";
    wordsP11.imgName = @"pato.jpg";
    [self.parablasArray addObject:wordsP11];

    
    Parablas *wordsP12 = [[Parablas alloc]init];
    wordsP12.spanLetter = @"Pp";
    wordsP12.engLetter = @"Tt";
       //wordsP12.spanLabel = @"PAvo";
       NSAttributedString *pavoAttributeString =[[NSAttributedString alloc]initWithString:@"Pavo"];
       
       NSMutableAttributedString *pavo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pavoAttributeString];
       
       
       [pavo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pavo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsP12.spanLabel = pavo;
    wordsP12.engLabel = @"Turkey";
    wordsP12.imgName = @"pavo.jpg";
    [self.parablasArray addObject:wordsP12];

    Parablas *wordsP13 = [[Parablas alloc]init];
    wordsP13.spanLetter = @"Pp";
    wordsP13.engLetter = @"Cc";
       //wordsP13.spanLabel = @"PAyaSO";
       NSAttributedString *payasoAttributeString =[[NSAttributedString alloc]initWithString:@"Payaso"];
       
       NSMutableAttributedString *payaso =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: payasoAttributeString];
       
       
       
       [payaso addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [payaso addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsP13.spanLabel = payaso;
    wordsP13.engLabel = @"Clown";
    wordsP13.imgName = @"payaso.jpg";
    [self.parablasArray addObject:wordsP13];

    
    Parablas *wordsP14 = [[Parablas alloc]init];
    wordsP14.spanLetter = @"Pp";
    wordsP14.engLetter = @"Cc";
       //wordsP14.spanLabel = @"PEpiNo";
       NSAttributedString *pepinoAttributeString =[[NSAttributedString alloc]initWithString:@"Pepino"];
       
       NSMutableAttributedString *pepino =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pepinoAttributeString];
       
       
       
       [pepino addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pepino addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];

       wordsP14.spanLabel = pepino;
    wordsP14.engLabel = @"Cucumber";
    wordsP14.imgName = @"pepino.jpg";
    [self.parablasArray addObject:wordsP14];

    
    
    Parablas *wordsP15 = [[Parablas alloc]init];
    wordsP15.spanLetter = @"Pp";
    wordsP15.engLetter = @"Pp";
       //wordsP15.spanLabel = @"PEra";
       NSAttributedString *peraAttributeString =[[NSAttributedString alloc]initWithString:@"Pera"];
       
       NSMutableAttributedString *pera =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: peraAttributeString];
       
       
       [pera addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pera addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       wordsP15.spanLabel = pera;
    wordsP15.engLabel = @"Pear";
    wordsP15.imgName = @"pera.jpg";
    [self.parablasArray addObject:wordsP15];

    
    Parablas *wordsP16 = [[Parablas alloc]init];
    wordsP16.spanLetter = @"Pp";
    wordsP16.engLetter = @"Dd";
       //wordsP16.spanLabel = @"PErro";
       NSAttributedString *perroAttributeString =[[NSAttributedString alloc]initWithString:@"Perro"];
       
       NSMutableAttributedString *perro =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: perroAttributeString];
       
       
       
       
       [perro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [perro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [perro addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsP16.spanLabel = perro;
    wordsP16.engLabel = @"Dog";
    wordsP16.imgName = @"perro.jpg";
    [self.parablasArray addObject:wordsP16];

    
    Parablas *wordsP17 = [[Parablas alloc]init];
    wordsP17.spanLetter = @"Pp";
    wordsP17.engLetter = @"Pp";
       //wordsP17.spanLabel = @"PIaNO";
       NSAttributedString *pianoAttributeString =[[NSAttributedString alloc]initWithString:@"Piano"];
       
       NSMutableAttributedString *piano =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pianoAttributeString];
       
       [piano addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       wordsP17.spanLabel = piano;
    wordsP17.engLabel = @"Piano";
    wordsP17.imgName = @"piano.jpg";
    [self.parablasArray addObject:wordsP17];

    
    
    Parablas *wordsP18 = [[Parablas alloc]init];
    wordsP18.spanLetter = @"Pp";
    wordsP18.engLetter = @"Pp";
       //wordsP18.spanLabel = @"PINcel";
       NSAttributedString *pincelAttributeString =[[NSAttributedString alloc]initWithString:@"Pincel"];
       
       NSMutableAttributedString *pincel =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pincelAttributeString];
       
       [pincel addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pincel addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       [pincel addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
       
       
       
       wordsP18.spanLabel = pincel;
    wordsP18.engLabel = @"Paintbrush";
    wordsP18.imgName = @"pincel.jpg";
    [self.parablasArray addObject:wordsP18];

    Parablas *wordsP19 = [[Parablas alloc]init];
    wordsP19.spanLetter = @"Pp";
    wordsP19.engLetter = @"Pp";
       //wordsP19.spanLabel = @"PINgüiNO";
       NSAttributedString *pingüinoAttributeString =[[NSAttributedString alloc]initWithString:@"Pingüino"];
       
       NSMutableAttributedString *pingüino =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pingüinoAttributeString];
       
       
       
       
       
       [pingüino addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pingüino addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       [pingüino addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
       wordsP19.spanLabel = pingüino;
    wordsP19.engLabel = @"Penguin";
    wordsP19.imgName = @"pinguino.jpg";
    [self.parablasArray addObject:wordsP19];

    
    Parablas *wordsP20 = [[Parablas alloc]init];
    wordsP20.spanLetter = @"Pp";
    wordsP20.engLetter = @"Pp";
       //wordsP20.spanLabel = @"PIña";
       NSAttributedString *piñaAttributeString =[[NSAttributedString alloc]initWithString:@"Piña"];
       
       NSMutableAttributedString *piña =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: piñaAttributeString];
       
       
       
       [piña addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [piña addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       
       wordsP20.spanLabel = piña;
    wordsP20.engLabel = @"Pineapple";
    wordsP20.imgName = @"pina.jpg";
    [self.parablasArray addObject:wordsP20];

    
    
    Parablas *wordsP21 = [[Parablas alloc]init];
    wordsP21.spanLetter = @"Pp";
    wordsP21.engLetter = @"Pp";
       //wordsP21.spanLabel = @"PIpa";
       NSAttributedString *pipaAttributeString =[[NSAttributedString alloc]initWithString:@"Pipa"];
       
       NSMutableAttributedString *pipa =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pipaAttributeString];
       
       
       [pipa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pipa addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       
       
       wordsP21.spanLabel= pipa;
    wordsP21.engLabel = @"Pipe";
    wordsP21.imgName = @"pipa.jpg";
    [self.parablasArray addObject:wordsP21];

    Parablas *wordsP22 = [[Parablas alloc]init];
    wordsP22.spanLetter = @"Pp";
    wordsP22.engLetter = @"Pp";
       //wordsP22.spanLabel = @"PISciNA";
       NSAttributedString *piscinaAttributeString =[[NSAttributedString alloc]initWithString:@"Piscina"];
       
       NSMutableAttributedString *piscina =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: piscinaAttributeString];
       
       
       
       [piscina addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [piscina addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsP22.spanLabel= piscina;
       wordsP22.engLabel = @"Pod";
    wordsP22.imgName = @"piscina.jpg";
    [self.parablasArray addObject:wordsP22];

    Parablas *wordsP23 = [[Parablas alloc]init];
    wordsP23.spanLetter = @"Pp";
    wordsP23.engLetter = @"Ff";
       //wordsP23.spanLabel = @"PLUma";
       NSAttributedString *plumaAttributeString =[[NSAttributedString alloc]initWithString:@"Pluma"];
       
       NSMutableAttributedString *pluma =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: plumaAttributeString];
       
       
       
       [pluma addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pluma addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsP23.spanLabel = pluma;
    wordsP23.engLabel = @"Feather";
    wordsP23.imgName = @"pluma.jpg";
    [self.parablasArray addObject:wordsP23];

    
    Parablas *wordsP24 = [[Parablas alloc]init];
    wordsP24.spanLetter = @"Pp";
    wordsP24.engLetter = @"Cc";
       //wordsP24.spanLabel = @"POlliTO";
       NSAttributedString *pollitoAttributeString =[[NSAttributedString alloc]initWithString:@"Pollito"];
       
       NSMutableAttributedString *pollito =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pollitoAttributeString];
       
       
       [pollito addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [pollito addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pollito addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       wordsP24.spanLabel = pollito;
    wordsP24.engLabel = @"Chick";
    wordsP24.imgName = @"pollito.jpg";
    [self.parablasArray addObject:wordsP24];

    
    Parablas *wordsP25 = [[Parablas alloc]init];
    wordsP25.spanLetter = @"Pp";
    wordsP25.engLetter = @"Bb";
       //wordsP25.spanLabel = @"PUenTE";
       NSAttributedString *puenteAttributeString =[[NSAttributedString alloc]initWithString:@"Puente"];
       
       NSMutableAttributedString *puente =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: puenteAttributeString];
       
       
       [puente addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
       [puente addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       wordsP25.spanLabel = puente;
    wordsP25.engLabel = @"Bridge";
    wordsP25.imgName = @"puente.jpg";
    [self.parablasArray addObject:wordsP25];

    Parablas *wordsP26 = [[Parablas alloc]init];
    wordsP26.spanLetter = @"Pp";
    wordsP26.engLetter = @"Ff";
       //wordsP26.spanLabel = @"PULgas";
       NSAttributedString *pulgasAttributeString =[[NSAttributedString alloc]initWithString:@"Pulgas"];
       
       NSMutableAttributedString *pulgas =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pulgasAttributeString];
       
       
       
       [pulgas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pulgas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];
       [pulgas addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(5, 1)];
       wordsP26.spanLabel = pulgas;
    wordsP26.engLabel = @"Fleas";
    wordsP26.imgName = @"pulgas.jpg";
    [self.parablasArray addObject:wordsP26];

    Parablas *wordsP27 = [[Parablas alloc]init];
    wordsP27.spanLetter = @"Pp";
    wordsP27.engLetter = @"Oo";
       //wordsP27.spanLabel = @"PULpo";
       NSAttributedString *pulpoAttributeString =[[NSAttributedString alloc]initWithString:@"Pulpo"];
       
       NSMutableAttributedString *pulpo =
       [[NSMutableAttributedString alloc]
        initWithAttributedString: pulpoAttributeString];
       
       
       
       [pulpo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
       [pulpo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(4, 1)];

       wordsP27.spanLabel = pulpo;
    wordsP27.engLabel = @"Octopus";
    wordsP27.imgName = @"pulpo.jpg";
    [self.parablasArray addObject:wordsP27];
       
   }
        if([self.appController.clickedString isEqualToString:@"Q"]){

    
    Parablas *wordsQ1 = [[Parablas alloc]init];
    wordsQ1.spanLetter = @"Qq";
    wordsQ1.engLetter = @"Cc";
    //wordsQ1.spanLabel = @"QUEso";
            
            NSAttributedString *quesoAttributeString =[[NSAttributedString alloc]initWithString:@"Queso"];
            
            NSMutableAttributedString *queso =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: quesoAttributeString];
            
            
            [queso addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            [queso addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            wordsQ1.spanLabel = queso;
    wordsQ1.engLabel = @"Cheese";
    wordsQ1.imgName = @"queso.jpg";
    [self.parablasArray addObject:wordsQ1];

    Parablas *wordsQ2 = [[Parablas alloc]init];
    wordsQ2.spanLetter = @"Qq";
    wordsQ2.engLetter = @"Ff";
    //wordsQ2.spanLabel = @"QUINce";
            
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
            wordsQ2.spanLabel = quince;
    wordsQ2.engLabel = @"Fifteen";
    wordsQ2.imgName = @"quince.jpg";
    [self.parablasArray addObject:wordsQ2];

        } if([self.appController.clickedString isEqualToString:@"R"]){
    
    Parablas *wordsR1 = [[Parablas alloc]init];
    wordsR1.spanLetter = @"Rr";
    wordsR1.engLetter = @"Rr";
    //wordsR1.spanLabel = @"RAdio";
            
            NSAttributedString *radioAttributeString =[[NSAttributedString alloc]initWithString:@"Radio"];
            
            NSMutableAttributedString *radio =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: radioAttributeString];
            
            
            
            [radio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            [radio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            [radio addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            
            wordsR1.spanLabel = radio;
    wordsR1.engLabel = @"Radio";
    wordsR1.imgName = @"radio.jpg";
    [self.parablasArray addObject:wordsR1];

    Parablas *wordsR2 = [[Parablas alloc]init];
    wordsR2.spanLetter = @"Rr";
    wordsR2.engLetter = @"Ff";
    //wordsR2.spanLabel = @"RAna";
            
            NSAttributedString *ranaAttributeString =[[NSAttributedString alloc]initWithString:@"Rana"];
            
            NSMutableAttributedString *rana =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: ranaAttributeString];
            
            
            
            [rana addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            [rana addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            wordsR2.spanLabel = rana;

    wordsR2.engLabel = @"Frog";
    wordsR2.imgName = @"rana.jpg";
    [self.parablasArray addObject:wordsR2];
    
    Parablas *wordsR3 = [[Parablas alloc]init];
    wordsR3.spanLetter = @"Rr";
    wordsR3.engLetter = @"Rr";
    //wordsR3.spanLabel = @"RAqueTA";
            
            NSAttributedString *raquetaAttributeString =[[NSAttributedString alloc]initWithString:@"Raqueta"];
            
            NSMutableAttributedString *raqueta =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: raquetaAttributeString];
            
            
            
            [raqueta addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            [raqueta addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            [raqueta addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            wordsR3.spanLabel = raqueta;
    wordsR3.engLabel = @"Racket";
    wordsR3.imgName = @"raqueta.jpg";
    [self.parablasArray addObject:wordsR3];
    
    Parablas *wordsR4 = [[Parablas alloc]init];
    wordsR4.spanLetter = @"Rr";
    wordsR4.engLetter = @"Ww";
    //wordsR4.spanLabel = @"REloj";
            
            NSAttributedString *relojAttributeString =[[NSAttributedString alloc]initWithString:@"Reloj"];
            
            NSMutableAttributedString *reloj =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: relojAttributeString];
            
            
            
            
            [reloj addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            [reloj addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            [reloj addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            
            
            wordsR4.spanLabel = reloj;
    wordsR4.engLabel = @"Watch";
    wordsR4.imgName = @"reloj.jpg";
    [self.parablasArray addObject:wordsR4];
    
    Parablas *wordsR5 = [[Parablas alloc]init];
    wordsR5.spanLetter = @"Rr";
    wordsR5.engLetter = @"Kk";
    //wordsR5.spanLabel = @"REy";
            
            NSAttributedString *reyAttributeString =[[NSAttributedString alloc]initWithString:@"Rey"];
            
            NSMutableAttributedString *rey =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: reyAttributeString];
            
            [rey addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            wordsR5.spanLabel= rey;
            wordsR5.engLabel = @"King";
    wordsR5.imgName = @"rey.jpg";
    [self.parablasArray addObject:wordsR5];
    
    Parablas *wordsR6 = [[Parablas alloc]init];
    wordsR6.spanLetter = @"Rr";
    wordsR6.engLetter = @"Rr";
            //wordsR6.spanLabel = @"RÍo";
            NSAttributedString *ríoAttributeString =[[NSAttributedString alloc]initWithString:@"Río"];
            
            NSMutableAttributedString *río =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: ríoAttributeString];
            
            
            
            
            [río addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            wordsR6.spanLabel =río;

    wordsR6.engLabel = @"River";
    wordsR6.imgName = @"rio.jpg";
    [self.parablasArray addObject:wordsR6];
    
    
    Parablas *wordsR7 = [[Parablas alloc]init];
    wordsR7.spanLetter = @"Rr";
    wordsR7.engLetter = @"Rr";
            //wordsR7.spanLabel = @"RObot";
            NSAttributedString *robotAttributeString =[[NSAttributedString alloc]initWithString:@"Robot"];
            
            NSMutableAttributedString *robot =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: robotAttributeString];
            
            
            
            
            [robot addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [robot addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [robot addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            
            wordsR7.spanLabel = robot;
    wordsR7.engLabel = @"Robot";
    wordsR7.imgName = @"robot.jpg";
    [self.parablasArray addObject:wordsR7];
    
    
    Parablas *wordsR8 = [[Parablas alloc]init];
    wordsR8.spanLetter = @"Rr";
    wordsR8.engLetter = @"Ww";
            //wordsR8.spanLabel = @"RUEda";
            NSAttributedString *ruedaAttributeString =[[NSAttributedString alloc]initWithString:@"Rueda"];
            
            NSMutableAttributedString *rueda =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: ruedaAttributeString];
            
            
            
            
            [rueda addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [rueda addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            wordsR8.spanLabel = rueda;
    wordsR8.engLabel = @"Wheel";
    wordsR8.imgName = @"rueda.jpg";
    [self.parablasArray addObject:wordsR8];
    
        } if([self.appController.clickedString isEqualToString:@"S"]){
    
    Parablas *wordsS1 = [[Parablas alloc]init];
    wordsS1.spanLetter = @"Ss";
    wordsS1.engLetter = @"Ww";
            //wordsS1.spanLabel = @"SANdíA";
            NSAttributedString *sandíaAttributeString =[[NSAttributedString alloc]initWithString:@"Sandía"];
            
            NSMutableAttributedString *sandía =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: sandíaAttributeString];
            
            
            
            
            [sandía addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [sandía addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            
            
            wordsS1.spanLabel = sandía;
    wordsS1.engLabel = @"Watermelon";
    wordsS1.imgName = @"sandia.jpg";
    [self.parablasArray addObject:wordsS1];

    Parablas *wordsS2 = [[Parablas alloc]init];
    wordsS2.spanLetter = @"Ss";
    wordsS2.engLetter = @"Ss";
            //wordsS2.spanLabel = @"SEIs";
            NSAttributedString *seisAttributeString =[[NSAttributedString alloc]initWithString:@"Seis"];
            
            NSMutableAttributedString *seis =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: seisAttributeString];
            
            
            
            
            
            [seis addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [seis addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            
            
            
            wordsS2.spanLabel = seis;
    wordsS2.engLabel = @"Six";
    wordsS2.imgName = @"seis.jpg";
    [self.parablasArray addObject:wordsS2];
    
    
    Parablas *wordsS3 = [[Parablas alloc]init];
    wordsS3.spanLetter = @"Ss";
    wordsS3.engLetter = @"Tt";
            //wordsS3.spanLabel = @"SEmáFOro";
            NSAttributedString *semáforoAttributeString =[[NSAttributedString alloc]initWithString:@"Semáforo"];
            
            NSMutableAttributedString *semáforo =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: semáforoAttributeString];
            
            
            
            
            [semáforo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [semáforo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [semáforo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(6, 1)];
            
            
            [semáforo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(7, 1)];

            
            
            wordsS3.spanLabel = semáforo;
    wordsS3.engLabel = @"Traffic light";
    wordsS3.imgName = @"semaforo.jpg";
    [self.parablasArray addObject:wordsS3];
    
    
    Parablas *wordsS4 = [[Parablas alloc]init];
    wordsS4.spanLetter = @"Ss";
    wordsS4.engLetter = @"Ss";
            //wordsS4.spanLabel = @"SERpienTE";
            NSAttributedString *serpienteAttributeString =[[NSAttributedString alloc]initWithString:@"Serpiente"];
            
            NSMutableAttributedString *serpiente =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: serpienteAttributeString];
            
            
            
            
            
            [serpiente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [serpiente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            
            
            [serpiente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(5, 1)];
            
            
            [serpiente addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(6, 1)];


    wordsS4.engLabel = @"Snake";
    wordsS4.imgName = @"serpiente.jpg";
    [self.parablasArray addObject:wordsS4];
    
    Parablas *wordsS5 = [[Parablas alloc]init];
    wordsS5.spanLetter = @"Ss";
    wordsS5.engLetter = @"Ss";
            //wordsS5.spanLabel = @"SIEte";
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

            wordsS5.spanLabel = siete;
    wordsS5.engLabel = @"Seven";
    wordsS5.imgName = @"siete.jpg";
    [self.parablasArray addObject:wordsS5];
   
    Parablas *wordsS6 = [[Parablas alloc]init];
    wordsS6.spanLetter = @"Ss";
    wordsS6.engLetter = @"Cc";
    //wordsS6.spanLabel = @"SIlla";
            
            NSAttributedString *sillaAttributeString =[[NSAttributedString alloc]initWithString:@"Silla"];
            
            NSMutableAttributedString *silla =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: sillaAttributeString];
            
            
            
            
            [silla addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [silla addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [silla addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];


            wordsS6.spanLabel = silla;
    wordsS6.engLabel = @"Chair";
    wordsS6.imgName = @"silla.jpg";
    [self.parablasArray addObject:wordsS6];
    
    Parablas *wordsS7 = [[Parablas alloc]init];
    wordsS7.spanLetter = @"Ss";
    wordsS7.engLetter = @"Ss";
            //wordsS7.spanLabel = @"SOfá";
            NSAttributedString *sofáAttributeString =[[NSAttributedString alloc]initWithString:@"Sofá"];
            
            NSMutableAttributedString *sofá =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: sofáAttributeString];
            
            
            
            [sofá addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [sofá addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];

            wordsS7.spanLabel = sofá;
    wordsS7.engLabel = @"sofa";
    wordsS7.imgName = @"sofa.jpg";
    [self.parablasArray addObject:wordsS7];
    
    
    Parablas *wordsS8 = [[Parablas alloc]init];
    wordsS8.spanLetter = @"Ss";
    wordsS8.engLetter = @"Ss";
            //wordsS8.spanLabel = @"SOL";
            NSAttributedString *solAttributeString =[[NSAttributedString alloc]initWithString:@"Sol"];
            
            NSMutableAttributedString *sol =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: solAttributeString];
            
            wordsS8.spanLabel = sol;

    wordsS8.engLabel = @"Sun";
    wordsS8.imgName = @"sol.jpg";
    [self.parablasArray addObject:wordsS8];
    
        } if([self.appController.clickedString isEqualToString:@"T"]){
    
    Parablas *wordsT1 = [[Parablas alloc]init];
    wordsT1.spanLetter = @"Tt";
    wordsT1.engLetter = @"Cc";
            //wordsT1.spanLabel = @"TAza";
            NSAttributedString *tazaAttributeString =[[NSAttributedString alloc]initWithString:@"Taza"];
            
            NSMutableAttributedString *taza =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tazaAttributeString];
            
            
            
            
            
            [taza addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [taza addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            wordsT1.spanLabel = taza;
    wordsT1.engLabel = @"Cup";
    wordsT1.imgName = @"taza.jpg";
    [self.parablasArray addObject:wordsT1];
    
    
    
    Parablas *wordsT2 = [[Parablas alloc]init];
    wordsT2.spanLetter = @"Tt";
    wordsT2.engLetter = @"Ss";
            //wordsT2.spanLabel = @"TElaRAña";
            NSAttributedString *telarañaAttributeString =[[NSAttributedString alloc]initWithString:@"Telaraña"];
            
            NSMutableAttributedString *telaraña =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: telarañaAttributeString];
            
            
            
            [telaraña addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [telaraña addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [telaraña addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(6, 1)];

            
            
            [telaraña addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(7, 1)];

            wordsT2.spanLabel = telaraña;
    wordsT2.engLabel = @"Spiderweb";
    wordsT2.imgName = @"telarana.jpg";
    [self.parablasArray addObject:wordsT2];
    
    
    Parablas *wordsT3 = [[Parablas alloc]init];
    wordsT3.spanLetter = @"Tt";
    wordsT3.engLetter = @"Tt";
            //wordsT3.spanLabel = @"TEléFOno";
            NSAttributedString *teléfonoAttributeString =[[NSAttributedString alloc]initWithString:@"Teléfono"];
            
            NSMutableAttributedString *teléfono =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: teléfonoAttributeString];
            
            
            
            
            [teléfono addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [teléfono addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [teléfono addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(6, 1)];
            
            
            [teléfono addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(7, 1)];

            wordsT3.spanLabel = teléfono;
    wordsT3.engLabel = @"Telephone";
    wordsT3.imgName = @"telefono.jpg";
    [self.parablasArray addObject:wordsT3];
    
    
    Parablas *wordsT4 = [[Parablas alloc]init];
    wordsT4.spanLetter = @"Tt";
    wordsT4.engLetter = @"Tt";
            //wordsT4.spanLabel = @"TEleVIsor";
            NSAttributedString *televisorAttributeString =[[NSAttributedString alloc]initWithString:@"Televisor"];
            
            NSMutableAttributedString *televisor =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: televisorAttributeString];
            
            
            
            [televisor addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [televisor addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [televisor addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(6, 1)];
            
            
            [televisor addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(7, 1)];
            
            
            [televisor addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(8, 1)];

            wordsT4.spanLabel = televisor;
    wordsT4.engLabel = @"Television";
    wordsT4.imgName = @"televisor.jpg";
    [self.parablasArray addObject:wordsT4];
    
    
    Parablas *wordsT5 = [[Parablas alloc]init];
    wordsT5.spanLetter = @"Tt";
    wordsT5.engLetter = @"Tt";
            //wordsT5.spanLabel = @"TEteRA";
            NSAttributedString *teteraAttributeString =[[NSAttributedString alloc]initWithString:@"Tetera"];
            
            NSMutableAttributedString *tetera =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: teteraAttributeString];
            
            
            
            
            [tetera addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tetera addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];

            
            wordsT5.spanLabel =tetera;
    wordsT5.engLabel = @"Teapot";
    wordsT5.imgName = @"tetera.jpg";
    [self.parablasArray addObject:wordsT5];
    
    Parablas *wordsT6 = [[Parablas alloc]init];
    wordsT6.spanLetter = @"Tt";
    wordsT6.engLetter = @"Bb";
            //wordsT6.spanLabel = @"TEteRO";
            NSAttributedString *teteroAttributeString =[[NSAttributedString alloc]initWithString:@"Tetero"];
            
            NSMutableAttributedString *tetero =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: teteroAttributeString];
            
            
            
            [tetero addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tetero addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];


            wordsT6.spanLabel = tetero;
    wordsT6.engLabel = @"Bottle";
    wordsT6.imgName = @"tetero.jpg";
    [self.parablasArray addObject:wordsT6];
    
    Parablas *wordsT7 = [[Parablas alloc]init];
    wordsT7.spanLetter = @"Tt";
    wordsT7.engLetter = @"Ss";
            //wordsT7.spanLabel = @"TIbuRÓN";
            NSAttributedString *tiburónAttributeString =[[NSAttributedString alloc]initWithString:@"Tiburón"];
            
            NSMutableAttributedString *tiburón =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tiburónAttributeString];
            
            
            
            [tiburón addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tiburón addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];

            
            
            
            
            
            
            wordsT7.spanLabel = tiburón;
    wordsT7.engLabel = @"Shark";
    wordsT7.imgName = @"tiburon.jpg";
    [self.parablasArray addObject:wordsT7];
    
    
    Parablas *wordsT8 = [[Parablas alloc]init];
    wordsT8.spanLetter = @"Tt";
    wordsT8.engLetter = @"Tt";
    //wordsT8.spanLabel = @"TIgre";
            wordsT8.engLabel = @"Tiger";
            NSAttributedString *tigerAttributeString =[[NSAttributedString alloc]initWithString:@"Tiger"];
            
            NSMutableAttributedString *tiger =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tigerAttributeString];
            
            
            
            
            
            
            [tiger addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tiger addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [tiger addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            
            
            
            wordsT8.spanLabel = tiger;
    wordsT8.imgName = @"tigre.jpg";
    [self.parablasArray addObject:wordsT8];
    
    Parablas *wordsT9 = [[Parablas alloc]init];
    wordsT9.spanLetter = @"Tt";
    wordsT9.engLetter = @"Ss";
            //wordsT9.spanLabel = @"TIjeRA";
            NSAttributedString *tijeraAttributeString =[[NSAttributedString alloc]initWithString:@"Tijera"];
            
            NSMutableAttributedString *tijera =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tijeraAttributeString];
            
            
            [tijera addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tijera addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];

            
            
            wordsT9.spanLabel = tijera;
    wordsT9.engLabel = @"Scissors";
    wordsT9.imgName = @"tijera.jpg";
    [self.parablasArray addObject:wordsT9];
    
    
    Parablas *wordsT10 = [[Parablas alloc]init];
    wordsT10.spanLetter = @"Tt";
    wordsT10.engLetter = @"Tt";
            //wordsT10.spanLabel = @"TOmaTE";
            NSAttributedString *tomateAttributeString =[[NSAttributedString alloc]initWithString:@"Tomate"];
            
            NSMutableAttributedString *tomate =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tomateAttributeString];
            
            
            
            
            [tomate addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(2, 1)];
            
            
            [tomate addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];

            
            wordsT10.spanLabel = tomate;

    wordsT10.engLabel = @"Tomato";
    wordsT10.imgName = @"tomate.jpg";
    [self.parablasArray addObject:wordsT10];
    
    
    Parablas *wordsT11 = [[Parablas alloc]init];
    wordsT11.spanLetter = @"Tt";
    wordsT11.engLetter = @"Ss";
            //wordsT11.spanLabel = @"TORniLLO";
            NSAttributedString *tornilloAttributeString =[[NSAttributedString alloc]initWithString:@"Tornillo"];
            
            NSMutableAttributedString *tornillo =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tornilloAttributeString];
            
            
            
            [tornillo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [tornillo addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            wordsT11.spanLabel = tornillo;

    wordsT11.engLabel = @"Screw";
    wordsT11.imgName = @"tornillo.jpg";
    [self.parablasArray addObject:wordsT11];
    
    
    Parablas *wordsT12 = [[Parablas alloc]init];
    wordsT12.spanLetter = @"Tt";
    wordsT12.engLetter = @"Tt";
            //wordsT12.spanLabel = @"TORtuGA";
            NSAttributedString *tortugaAttributeString =[[NSAttributedString alloc]initWithString:@"Tortuga"];
            
            NSMutableAttributedString *tortuga =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tortugaAttributeString];
            
            
            
            
            [tortuga addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [tortuga addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            wordsT12.spanLabel = tortuga;
    wordsT12.engLabel = @"Turtle";
    wordsT12.imgName = @"tortuga.jpg";
    [self.parablasArray addObject:wordsT12];
    
    
    Parablas *wordsT13 = [[Parablas alloc]init];
    wordsT13.spanLetter = @"Tt";
    wordsT13.engLetter = @"Cc";
            //wordsT13.spanLabel = @"TRÉbol";
            NSAttributedString *trébolAttributeString =[[NSAttributedString alloc]initWithString:@"Trébol"];
            
            NSMutableAttributedString *trébol =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: trébolAttributeString];
            
            
            
            
            [trébol addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [trébol addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            wordsT13.spanLabel = trébol;
    wordsT13.engLabel = @"Clover";
    wordsT13.imgName = @"trebol.jpg";
    [self.parablasArray addObject:wordsT13];
    
    
    Parablas *wordsT14 = [[Parablas alloc]init];
    wordsT14.spanLetter = @"Tt";
    wordsT14.engLetter = @"Tt";
            //wordsT14.spanLabel = @"TREce";
            NSAttributedString *treceAttributeString =[[NSAttributedString alloc]initWithString:@"Trece"];
            
            NSMutableAttributedString *trece =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: treceAttributeString];
            
            
            
            
            [trece addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];
            
            
            [trece addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(3, 1)];

            
            wordsT14.spanLabel = trece;
            wordsT14.engLabel = @"Thirteen";
    wordsT14.imgName = @"trece.jpg";
    [self.parablasArray addObject:wordsT14];
    
    Parablas *wordsT15 = [[Parablas alloc]init];
    wordsT15.spanLetter = @"Tt";
    wordsT15.engLetter = @"Tt";
            //wordsT15.spanLabel = @"TREN";
            NSAttributedString *trenAttributeString =[[NSAttributedString alloc]initWithString:@"Tren"];
            
            NSMutableAttributedString *tren =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: trenAttributeString];
            
            
            wordsT15.spanLabel = tren;

    wordsT15.engLabel = @"Train";
    wordsT15.imgName = @"tren.jpg";
    [self.parablasArray addObject:wordsT15];
    
    Parablas *wordsT16 = [[Parablas alloc]init];
    wordsT16.spanLetter = @"Tt";
    wordsT16.engLetter = @"Tt";
            //wordsT16.spanLabel = @"TRES";
            NSAttributedString *tresAttributeString =[[NSAttributedString alloc]initWithString:@"Tres"];
            
            NSMutableAttributedString *tres =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tresAttributeString];
            
            
            
            
            
            
            wordsT16.spanLabel = tres;
            
            
            
            
            

    wordsT16.engLabel = @"Three";
    wordsT16.imgName = @"tres.jpg";
    [self.parablasArray addObject:wordsT16];
    
    Parablas *wordsT17 = [[Parablas alloc]init];
    wordsT17.spanLetter = @"Tt";
    wordsT17.engLetter = @"Ss";
            //wordsT17.spanLabel = @"TUERca";
            NSAttributedString *tuercaAttributeString =[[NSAttributedString alloc]initWithString:@"Tuerca"];
            
            NSMutableAttributedString *tuerca =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: tuercaAttributeString];
            
            
            [tuerca addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];
            
            
            
            [tuerca addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(5, 1)];
            
            wordsT17.spanLabel = tuerca;
    wordsT17.engLabel = @"Screw";
    wordsT17.imgName = @"tuerca.jpg";
    [self.parablasArray addObject:wordsT17];
    
        } if([self.appController.clickedString isEqualToString:@"U"]){
    
    Parablas *wordsU1 = [[Parablas alloc]init];
    wordsU1.spanLetter = @"Uu";
    wordsU1.engLetter = @"Uu";
            //wordsU1.spanLabel = @"UniCORnio";
            NSAttributedString *unicornioAttributeString =[[NSAttributedString alloc]initWithString:@"Unicornio"];
            
            NSMutableAttributedString *unicornio =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: unicornioAttributeString];
            
            
            
            [unicornio addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(1, 1)];
            
            [unicornio addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(2, 1)];
            
            [unicornio addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(6, 1)];
            
            [unicornio addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(7, 1)];
            [unicornio addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(8, 1)];
            
            
            wordsU1.spanLabel = unicornio;
                wordsU1.engLabel = @"Unicorn";
    wordsU1.imgName = @"unicornio.jpg";
    [self.parablasArray addObject:wordsU1];
    
    
    Parablas *wordsU2 = [[Parablas alloc]init];
    wordsU2.spanLetter = @"Uu";
    wordsU2.engLetter = @"Oo";
            //wordsU2.spanLabel = @"Uno";
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
            
            wordsU2.spanLabel = uno;
    wordsU2.engLabel = @"One";
    wordsU2.imgName = @"uno.jpg";
    [self.parablasArray addObject:wordsU2];

    
    Parablas *wordsU3 = [[Parablas alloc]init];
    wordsU3.spanLetter = @"Uu";
    wordsU3.engLetter = @"Nn";
            //wordsU3.spanLabel = @"Uña";
            NSAttributedString *uñaAttributeString =[[NSAttributedString alloc]initWithString:@"Uña"];
            
            NSMutableAttributedString *uña =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: uñaAttributeString];

            
            [uña addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
            
            
            [uña addAttribute:NSForegroundColorAttributeName
        value:[UIColor blackColor]
        range:NSMakeRange(2, 1)];
            wordsU3.spanLabel = uña;
    wordsU3.engLabel = @"Nail";
    wordsU3.imgName = @"una.jpg";
    [self.parablasArray addObject:wordsU3];

    
    Parablas *wordsU4 = [[Parablas alloc]init];
    wordsU4.spanLetter = @"Uu";
    wordsU4.engLetter = @"Gg";
            //wordsU4.spanLabel = @"Uva";
            NSAttributedString *uvaAttributeString =[[NSAttributedString alloc]initWithString:@"Uva"];
            
            NSMutableAttributedString *uva =
            [[NSMutableAttributedString alloc]
             initWithAttributedString:uvaAttributeString];
            
            
            
            
            [uva addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(1, 1)];
            
            
            
            [uva addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];

            wordsU4.spanLabel = uva;
    wordsU4.engLabel = @"Grape";
    wordsU4.imgName = @"uva.jpg";
    [self.parablasArray addObject:wordsU4];

            
        } if([self.appController.clickedString isEqualToString:@"V"]){
    Parablas *wordsV1 = [[Parablas alloc]init];
    wordsV1.spanLetter = @"Vv";
    wordsV1.engLetter = @"Cc";
            //wordsV1.spanLabel = @"VAca";
            NSAttributedString *vacaAttributeString =[[NSAttributedString alloc]initWithString:@"Vaca"];
            
            NSMutableAttributedString *vaca =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: vacaAttributeString];
            
            
            
            
            [vaca addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
            
            
            [vaca addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

            wordsV1.spanLabel = vaca;
    wordsV1.engLabel = @"Cow";
    wordsV1.imgName = @"vaca.jpg";
    [self.parablasArray addObject:wordsV1];
    
    Parablas *wordsV2 = [[Parablas alloc]init];
    wordsV2.spanLetter = @"Vv";
    wordsV2.engLetter = @"Cc";
            //wordsV2.spanLabel = @"VAqueRO";
            NSAttributedString *vaqueroAttributeString =[[NSAttributedString alloc]initWithString:@"Vaquero"];
            
            NSMutableAttributedString *vaquero =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: vaqueroAttributeString];
            
            
            
            [vaquero addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
            [vaquero addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            [vaquero addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];

            wordsV2.spanLabel = vaquero;
    wordsV2.engLabel = @"Cowboy";
    wordsV2.imgName = @"vaquero.jpg";
    [self.parablasArray addObject:wordsV2];

    Parablas *wordsV3 = [[Parablas alloc]init];
    wordsV3.spanLetter = @"Vv";
    wordsV3.engLetter = @"Tt";
            //wordsV3.spanLabel = @"VEINte";
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
            
            
            wordsV3.spanLabel = veinte;
            wordsV3.engLabel = @"Twenty";
    wordsV3.imgName = @"veinte.jpg";
    [self.parablasArray addObject:wordsV3];
  
    Parablas *wordsV4 = [[Parablas alloc]init];
    wordsV4.spanLetter = @"Vv";
    wordsV4.engLetter = @"Cc";
            //wordsV4.spanLabel = @"VEla";
            NSAttributedString *velaAttributeString =[[NSAttributedString alloc]initWithString:@"Vela"];
            
            NSMutableAttributedString *vela =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: velaAttributeString];

            
            
            [vela addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
            [vela addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            
            
            wordsV4.spanLabel = vela;
    wordsV4.engLabel = @"Candle";
    wordsV4.imgName = @"vela.jpg";
    [self.parablasArray addObject:wordsV4];

    
    Parablas *wordsV5 = [[Parablas alloc]init];
    wordsV5.spanLetter = @"Vv";
    wordsV5.engLetter = @"Ww";
            //wordsV5.spanLabel = @"VENta";
            NSAttributedString *ventaAttributeString =[[NSAttributedString alloc]initWithString:@"Venta"];
            
            NSMutableAttributedString *venta =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: ventaAttributeString];

            
            
            [venta addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            [venta addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
            
            wordsV5.spanLabel = venta;
    wordsV5.engLabel = @"Window";
    wordsV5.imgName = @"venta.jpg";
    [self.parablasArray addObject:wordsV5];
 
    Parablas *wordsV6 = [[Parablas alloc]init];
    wordsV6.spanLetter = @"Vv";
    wordsV6.engLetter = @"Gg";
            //wordsV6.spanLabel = @"VERde";
            NSAttributedString *verdeAttributeString =[[NSAttributedString alloc]initWithString:@"Verde"];
            
            NSMutableAttributedString *verde =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: verdeAttributeString];
            
            
            
            [verde addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            
            [verde addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
            wordsV6.spanLabel = verde;
    wordsV6.engLabel = @"Green";
    wordsV6.imgName = @"verde.jpg";
    [self.parablasArray addObject:wordsV6];

    Parablas *wordsV7 = [[Parablas alloc]init];
    wordsV7.spanLetter = @"Vv";
    wordsV7.engLetter = @"Ww";
            //wordsV7.spanLabel = @"VIno";
            NSAttributedString *vinoAttributeString =[[NSAttributedString alloc]initWithString:@"Vino"];
            
            NSMutableAttributedString *vino =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: vinoAttributeString];
            
            
            
            [vino addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(2, 1)];
            
            [vino addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];

            wordsV7.spanLabel = vino;
    wordsV7.engLabel = @"Wine";
    wordsV7.imgName = @"vino.jpg";
    [self.parablasArray addObject:wordsV7];

    Parablas *wordsV8 = [[Parablas alloc]init];
    wordsV8.spanLetter = @"Vv";
    wordsV8.engLetter = @"Vv";
            //wordsV8.spanLabel = @"VIOlín";
            NSAttributedString *violínAttributeString =[[NSAttributedString alloc]initWithString:@"Violín"];
            
            NSMutableAttributedString *violín =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: violínAttributeString];
            
            
            
            
            [violín addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            [violín addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
            [violín addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];

            wordsV8.spanLabel = violín;
    wordsV8.engLabel = @"Violin";
    wordsV8.imgName = @"violin.jpg";
    [self.parablasArray addObject:wordsV8];

    
    Parablas *wordsV9 = [[Parablas alloc]init];
    wordsV9.spanLetter = @"Vv";
    wordsV9.engLetter = @"Vv";
            //wordsV9.spanLabel = @"VOLcán";
            NSAttributedString *volcánAttributeString =[[NSAttributedString alloc]initWithString:@"Volcán"];
            
            NSMutableAttributedString *volcán =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: volcánAttributeString];
            
            
            
            
            
            [volcán addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(3, 1)];
            [volcán addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(4, 1)];
            [volcán addAttribute:NSForegroundColorAttributeName
                        value:[UIColor blackColor]
                        range:NSMakeRange(5, 1)];
            wordsV9.spanLabel = volcán;
    wordsV9.engLabel = @"Volcano";
    wordsV9.imgName = @"volcan.jpg";
    [self.parablasArray addObject:wordsV9];

    
    //W//
            
        }
    
    
    
    
    
    
    if([self.appController.clickedString isEqualToString:@"Y"]){
    
    Parablas *wordsY1 = [[Parablas alloc]init];
    wordsY1.spanLetter = @"Yy";
    wordsY1.engLetter = @"Yy";
            //wordsY1.spanLabel = @"YAte";
            NSAttributedString *yateAttributeString =[[NSAttributedString alloc]initWithString:@"Yate"];
            
            NSMutableAttributedString *yate =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: yateAttributeString];
        
        
        
        
        [yate addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(2, 1)];
        
        [yate addAttribute:NSForegroundColorAttributeName
                       value:[UIColor blackColor]
                       range:NSMakeRange(3, 1)];
        
        wordsY1.spanLabel = yate;

    wordsY1.engLabel = @"Yatch";
    wordsY1.imgName = @"yate.jpg";
    [self.parablasArray addObject:wordsY1];
    
        
    Parablas *wordsY2 = [[Parablas alloc]init];
    wordsY2.spanLetter = @"Yy";
    wordsY2.engLetter = @"Yy";
            //wordsY2.spanLabel = @"YOyo";
            NSAttributedString *yoyoAttributeString =[[NSAttributedString alloc]initWithString:@"Yoyo"];
            
            NSMutableAttributedString *yoyo =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: yoyoAttributeString];
        
        
        [yoyo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
        
        [yoyo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
        
        wordsY2.spanLabel = yoyo;
        

        

    wordsY2.engLabel = @"Yoyo";
    wordsY2.imgName = @"yoyo.jpg";
    [self.parablasArray addObject:wordsY2];
    
    Parablas *wordsY3 = [[Parablas alloc]init];
    wordsY3.spanLetter = @"Yy";
    wordsY3.engLetter = @"Yy";
            //wordsY3.spanLabel = @"YUca";
            NSAttributedString *yucaAttributeString =[[NSAttributedString alloc]initWithString:@"Yuca"];
            
            NSMutableAttributedString *yuca =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: yucaAttributeString];
       
        [yoyo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(2, 1)];
        
        [yoyo addAttribute:NSForegroundColorAttributeName
                     value:[UIColor blackColor]
                     range:NSMakeRange(3, 1)];
        
        wordsY2.spanLabel = yuca;
        
        
    wordsY3.engLabel = @"Yuca";
    wordsY3.imgName = @"yuca.jpg";
    [self.parablasArray addObject:wordsY3];
    
            
        } if([self.appController.clickedString isEqualToString:@"Z"]){
    Parablas *wordsZ1 = [[Parablas alloc]init];
    wordsZ1.spanLetter = @"Zz";
    wordsZ1.engLetter = @"Cc";
            //wordsZ1.spanLabel = @"ZAnaHOria";
           
            NSAttributedString *zanahoriaAttributeString =[[NSAttributedString alloc]initWithString:@"Zanahoria"];
            
            NSMutableAttributedString *zanahoria =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: zanahoriaAttributeString];
            
            [zanahoria addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(2, 1)];
            
            [zanahoria addAttribute:NSForegroundColorAttributeName
                         value:[UIColor blackColor]
                         range:NSMakeRange(3, 1)];
            
            [zanahoria addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(6, 1)];
            
            [zanahoria addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(7, 1)];
            
            
            [zanahoria addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(8, 1)];
            
            wordsZ1.spanLabel = zanahoria;

            
            

    wordsZ1.engLabel = @"Carrot";
    wordsZ1.imgName = @"zanahoria.jpg";
    [self.parablasArray addObject:wordsZ1];
    
    Parablas *wordsZ2 = [[Parablas alloc]init];
    wordsZ2.spanLetter = @"Zz";
    wordsZ2.engLetter = @"Ss";
            //wordsZ2.spanLabel = @"ZApaTO";
            NSAttributedString *zapatoAttributeString =[[NSAttributedString alloc]initWithString:@"Zapato"];
            
            NSMutableAttributedString *zapato =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: zapatoAttributeString];

            [zapato addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(2, 1)];
            
            [zapato addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(3, 1)];
            
            

            wordsZ2.spanLabel = zapato;
            
     wordsZ2.engLabel = @"Shoe";
    wordsZ2.imgName = @"zapato.jpg";
    [self.parablasArray addObject:wordsZ2];

            
            
            
    Parablas *wordsZ3 = [[Parablas alloc]init];
    wordsZ3.spanLetter = @"Zz";
    wordsZ3.engLetter = @"Zz";
            //wordsZ3.spanLabel = @"ZOOlóGIco";
            NSAttributedString *zoológicoAttributeString =[[NSAttributedString alloc]initWithString:@"zoológico"];
            
            NSMutableAttributedString *zoológico =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: zoológicoAttributeString];

            [zoológico addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(3, 1)];
            
            [zoológico addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(7, 1)];
            
            [zoológico addAttribute:NSForegroundColorAttributeName
                           value:[UIColor blackColor]
                           range:NSMakeRange(8, 1)];
            
                        wordsZ3.spanLabel = zoológico;
    
    wordsZ3.engLabel = @"Zoo";
    wordsZ3.imgName = @"zoologico.jpg";
    [self.parablasArray addObject:wordsZ3];

    
    Parablas *wordsZ4 = [[Parablas alloc]init];
    wordsZ4.spanLetter = @"Zz";
    wordsZ4.engLetter = @"Ff";
            //wordsZ4.spanLabel = @"ZOrra";
            NSAttributedString *zorraAttributeString =[[NSAttributedString alloc]initWithString:@"Zorra"];
            
            NSMutableAttributedString *zorra =
            [[NSMutableAttributedString alloc]
             initWithAttributedString: zorraAttributeString];

            [zorra addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(2, 1)];
            
            [zorra addAttribute:NSForegroundColorAttributeName
                              value:[UIColor blackColor]
                              range:NSMakeRange(3, 1)];
           
            [zorra addAttribute:NSForegroundColorAttributeName
                          value:[UIColor blackColor]
                          range:NSMakeRange(4, 1)];

            wordsZ4.spanLabel = zorra;
            
            
            
    wordsZ4.engLabel = @"Fox";
    wordsZ4.imgName = @"zorra.jpg";
    [self.parablasArray addObject:wordsZ4];
        }
    
    //(á, é, í, ó, ú, ü, ñ, ¿, ¡,Ñ Á, É, Í, Ó,Ú
    
    
    
    self.index = 0;
    [self showMethod];
    
    
    

    
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
    
    
    
    Parablas *showingParablas = [self.parablasArray objectAtIndex:self.index];
    
    
    self.spanishLetter.text = showingParablas.spanLetter;
    self.englishLetter.text = showingParablas.engLetter;
    self.englishlabel.text = showingParablas.engLabel;
    [self.spanishLabel setAttributedText:showingParablas.spanLabel];
    
    
    self.imageView.image = [UIImage imageNamed:showingParablas.imgName];
    
    
}

- (IBAction)englishButtonClicked:(id)sender {
    
    Parablas *parabla = [self.parablasArray objectAtIndex:self.index];
    NSString *englishSound = parabla.engSound;
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:englishSound ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];

}

- (IBAction)spanishButttonClicked:(id)sender {
    
    Parablas *parabla = [self.parablasArray objectAtIndex:self.index];
    NSString *englishSound = parabla.spanSound;
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:englishSound ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];

}

- (IBAction)nextButtonClicked:(id)sender {
    
    if (self.index == self.parablasArray.count) {
        self.index = 0;
    }else {
        self.index ++;
    }
    
    [self showMethod];
    
}

- (IBAction)prevButtonClicked:(id)sender {
    
    if (self.index == 0) {
        self.index = self.parablasArray.count;
    }else {
        self.index --;
    }
    
    [self showMethod];
    
    
}
@end
