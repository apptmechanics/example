//
//  DetailedSillabusViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 31/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "DetailedSillabusViewController.h"
#import "FMDB.h"
#import "FMDatabase.h"
#import "CompletarPalabras.h"
#import "ViewImageViewObject.h"

@interface DetailedSillabusViewController ()
@property (weak, nonatomic) IBOutlet UIView *fiveButtonView;
@property (weak, nonatomic) IBOutlet UIView *oneButtonView;
@property (weak, nonatomic) IBOutlet UIView *twoButtonView;
@property (weak, nonatomic) IBOutlet UIView *threeButtonView;
@property (weak, nonatomic) IBOutlet UIView *fourButtonView;
@property (weak, nonatomic) IBOutlet UIButton *oneButton1;
@property (weak, nonatomic) IBOutlet UIButton *twoButton1;
@property (weak, nonatomic) IBOutlet UIButton *twoButton2;
@property (weak, nonatomic) IBOutlet UIButton *threeButton2;

@property (weak, nonatomic) IBOutlet UIButton *threeButton1;

@property (weak, nonatomic) IBOutlet UIButton *threeButton3;

@property (weak, nonatomic) IBOutlet UIButton *fourButton1;
@property (weak, nonatomic) IBOutlet UIButton *fourButton2;
@property (weak, nonatomic) IBOutlet UIButton *fourButton3;
@property (weak, nonatomic) IBOutlet UIButton *fourButton4;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton1;

@property (weak, nonatomic) IBOutlet UIButton *fiveButton2;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton3;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton4;
@property (weak, nonatomic) IBOutlet UIButton *fiveButton5;

@property (weak, nonatomic) IBOutlet UIImageView *bigImageView;


@property (weak, nonatomic) IBOutlet UIButton *puzzleWord1;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord2;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord3;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord4;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord5;
@property (weak, nonatomic) IBOutlet UIButton *puzzleword6;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord7;
@property (weak, nonatomic) IBOutlet UIButton *puzzleWord8;



@property(nonatomic) CGPoint theOrginalCenterButton1;
@property(nonatomic) CGPoint theOrginalCenterButton2;
@property(nonatomic) CGPoint theOrginalCenterButton3;
@property(nonatomic) CGPoint theOrginalCenterButton4;
@property(nonatomic) CGPoint theOrginalCenterButton5;
@property(nonatomic) CGPoint theOrginalCenterButton6;

@property(nonatomic) CGPoint theOrginalCenterButton7;

@property(nonatomic) CGPoint theOrginalCenterButton8;

@property(nonatomic)NSInteger theWordDividercount;

@property(nonatomic,strong)NSMutableArray *thepalabrasArray;

@property(strong,nonatomic)NSMutableArray *theWordsDivider;
@property(nonatomic,strong)NSMutableArray *viewsArray;
@property(nonatomic,strong)NSMutableArray *buttonsArray;
@property(nonatomic,strong)NSMutableArray *randomStrings;

@property(nonatomic,strong)NSMutableArray *eightButtonArray;
@property (weak, nonatomic) IBOutlet UIView *fiveOneView;


@property(nonatomic,strong)NSMutableArray *remainingButtonArray;

@end

@implementation DetailedSillabusViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(backBtnClicked:)];
    self.navigationItem.leftBarButtonItem = backButton;

    
    self.theWordsDivider = [[NSMutableArray alloc]init];
    self.thepalabrasArray = [[NSMutableArray alloc]init];
    self.eightButtonArray = [@[]mutableCopy];
    self.buttonsArray = [[NSMutableArray alloc]init];
    self.remainingButtonArray = [[NSMutableArray alloc]init];
    self.viewsArray = [[NSMutableArray alloc]init];
    
   
    
    self.oneButtonView.hidden = YES;
    self.twoButtonView.hidden = YES;
    self.threeButtonView.hidden = YES;
    self.fourButtonView.hidden = YES;
    self.fiveButtonView.hidden = YES;
    
    
    
    
    [self.buttonsArray addObject:self.puzzleWord1];
    [self.buttonsArray addObject:self.puzzleWord2];
    [self.buttonsArray addObject:self.puzzleWord3];
    [self.buttonsArray addObject:self.puzzleWord4];
    [self.buttonsArray addObject:self.puzzleWord5];
    [self.buttonsArray addObject:self.puzzleword6];
    [self.buttonsArray addObject:self.puzzleWord7];
    [self.buttonsArray addObject:self.puzzleWord8];
    
    
    
    [self.remainingButtonArray addObject:self.puzzleWord1];
    [self.remainingButtonArray addObject:self.puzzleWord2];
    [self.remainingButtonArray addObject:self.puzzleWord3];
    [self.remainingButtonArray addObject:self.puzzleWord4];
    [self.remainingButtonArray addObject:self.puzzleWord5];
    [self.remainingButtonArray addObject:self.puzzleword6];
    [self.remainingButtonArray addObject:self.puzzleWord7];
    [self.remainingButtonArray addObject:self.puzzleWord8];

    
    
    
    
    [self addingPanGuestures];
    
    
    
    
    [self openDataBase];
    
    
    
    
    // Do any additional setup after loading the view.
}


-(void)addingResultButtons{
    
    
    if(self.theWordDividercount == 1){
        self.oneButtonView.hidden = NO;
        // self.oneButtonView.hidden = YES;
        self.twoButtonView.hidden = YES;
        self.threeButtonView.hidden = YES;
        self.fourButtonView.hidden = YES;
        self.fiveButtonView.hidden = YES;
        
    
        
        
        [self.viewsArray addObject:self.oneButton1];
        
        
        
        
        
    }
    if(self.theWordDividercount == 2){
        
        self.oneButtonView.hidden = YES;
        self.twoButtonView.hidden = NO;
        self.threeButtonView.hidden = YES;
        self.fourButtonView.hidden = YES;
        self.fiveButtonView.hidden = YES;
        
        
         [self.viewsArray addObject:self.twoButton1];
        [self.viewsArray addObject:self.twoButton2];
        
        
    }if(self.theWordDividercount == 3){
        self.oneButtonView.hidden = YES;
        self.twoButtonView.hidden = YES;
        self.threeButtonView.hidden = NO;
        self.fourButtonView.hidden = YES;
        self.fiveButtonView.hidden = YES;
        
        
        [self.viewsArray addObject:self.threeButton1];
        [self.viewsArray addObject:self.threeButton2];
        [self.viewsArray addObject:self.threeButton3];
        
        
    }if(self.theWordDividercount == 4){
        self.oneButtonView.hidden = YES;
        self.twoButtonView.hidden = YES;
        self.threeButtonView.hidden = YES;
        self.fourButtonView.hidden = NO;
        self.fiveButtonView.hidden = YES;
        
        
         [self.viewsArray addObject:self.fourButton1];
         [self.viewsArray addObject:self.fourButton2];
         [self.viewsArray addObject:self.fourButton3];
         [self.viewsArray addObject:self.fourButton4];
        
        
    }if(self.theWordDividercount == 5){
        self.oneButtonView.hidden = YES;
        self.twoButtonView.hidden = YES;
        self.threeButtonView.hidden = YES;
        self.fourButtonView.hidden = YES;
        self.fiveButtonView.hidden = NO;
        
        
        [self.viewsArray addObject:self.fiveOneView];
        [self.viewsArray addObject:self.fiveButton2];
        [self.viewsArray addObject:self.fiveButton3];
        [self.viewsArray addObject:self.fiveButton4];
        [self.viewsArray addObject:self.fiveButton5];

        
    }
    
    
    
    
    for(int i=0; i< self.viewsArray.count;i++){
        UIButton *view = self.viewsArray[i];
        view.tag = i+1;
        
        
    }

    
    for(int i=0; i< self.viewsArray.count;i++){
        
     UIButton *view = self.viewsArray[i];
        
        NSLog(@"the button Tag is %ld",(long)view.tag);
    
    
    }
    
    
    
    
}



-(void)openDataBase{
    
    self.randomStrings = [[NSMutableArray alloc]init];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docsPath = [paths objectAtIndex:0];
    NSString *dbFilePath = [docsPath stringByAppendingPathComponent:@"abc.db"];
    
    
    NSString *dbPathFromApp = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"abc.db"];
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    
    FMDatabase *db;
    
    if([self copyFile:dbPathFromApp toTarget:dbFilePath]){
        
        db = [FMDatabase databaseWithPath:[self getFilePath:@"abc.db"]];
        if([db open]){
            
            NSString * query = [NSString stringWithFormat:@"select * from words WHERE image_id IS NOT NULL AND title like 'a%%'"];
            
            FMResultSet *results = [db executeQuery:query];
            while([results next]) {
                
                CompletarPalabras *newObject = [[CompletarPalabras alloc]init];
                newObject.englishWord = [results stringForColumn:@"content_english"];
                newObject.spanishWord = [results stringForColumn:@"title"];
                newObject.spanishSound = [results stringForColumn:@"sound_title"];
                
                NSString *wordWithDashes = [results stringForColumn:@"content"];
                newObject.breakingWord = wordWithDashes;
                
                NSLog(@"the word with dashes is %@",wordWithDashes);
                
                newObject.breakingWordArray =  [wordWithDashes componentsSeparatedByString:@"-"];
            
               
                
                [self.thepalabrasArray addObject:newObject];
            }
            
            
            
            
            
            
            
            
            
            
            
            NSString * randomStringQuery = [NSString stringWithFormat:@"select * from words WHERE image_id IS  NULL "];
            
            FMResultSet *randomResults = [db executeQuery:randomStringQuery];
            
            while([randomResults next]) {
                
                NSString *randomString = [randomResults stringForColumn:@"content"];
                [self.randomStrings addObject:randomString];
            
            }
            
            
            CompletarPalabras *theUsedObject = [self.thepalabrasArray objectAtIndex:0];
        
            [self shuffle];
            self.viewsArray  = [self shuffleArray:self.viewsArray];
            self.buttonsArray = [self shuffleArray:self.buttonsArray];
            [self showMethod];
            
            
            
        }
    }
    
}




-(void)showMethod{
    
    
    
    [self shuffleArray:self.buttonsArray];
    [self shuffleArray:self.randomStrings];
  
    CompletarPalabras *complearParablas = [self.thepalabrasArray objectAtIndex:0];
    
     NSString * immageName = [NSString stringWithFormat:@"%@.%@", [complearParablas.spanishWord lowercaseString], @"jpg"];
    [self.bigImageView setImage:[UIImage imageNamed:immageName]];
    self.theWordDividercount = complearParablas.breakingWordArray.count;
    [self addingResultButtons];
    
    for(int i = 0 ; i< complearParablas.breakingWordArray.count ;i++){
      
        
        
        
        [self.eightButtonArray addObject:complearParablas.breakingWordArray[i]];
        [self.buttonsArray[i] setTitle:complearParablas.breakingWordArray[i] forState:UIControlStateNormal];
        
        UIButton *button = self.buttonsArray[i];
        button.tag = i+1;
        
        
    }
    
    
    
    for(int i = (int) complearParablas.breakingWordArray.count; i < 8 ; i++){
        
        [self.buttonsArray[i] setTitle:self.randomStrings[i] forState:UIControlStateNormal];
        UIButton *button = self.buttonsArray[i];
        button.tag = 000000;
        
    }
    
    
    
    
   
    
    
    
    
    
}





- (void)shuffle
{
    NSUInteger count = self.thepalabrasArray.count;
    if (count < 1) return;
    for (NSUInteger i = 0; i < self.thepalabrasArray.count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [self.thepalabrasArray exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    
    CompletarPalabras *theUsedObject = [self.thepalabrasArray objectAtIndex:0];
    NSLog(@"the spanish word is %@",theUsedObject.spanishSound);
}


- (NSMutableArray *)shuffleArray:(NSMutableArray *)normalArray
{
    NSUInteger count = normalArray.count;
    if (count < 1) return normalArray;
    for (NSUInteger i = 0; i < normalArray.count - 1; ++i) {
        NSInteger remainingCount = count - i;
        NSInteger exchangeIndex = i + arc4random_uniform((u_int32_t )remainingCount);
        [normalArray exchangeObjectAtIndex:i withObjectAtIndex:exchangeIndex];
    }
    
    
    CompletarPalabras *theUsedObject = [self.thepalabrasArray objectAtIndex:0];
    NSLog(@"the spanish word is %@",theUsedObject.spanishSound);
    
    
    
    
    return normalArray;
}


-(void)addingPanGuestures{
    
    UIPanGestureRecognizer *panGesture1 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture1:)];
    [self.puzzleWord1 addGestureRecognizer:panGesture1];
    [self.puzzleWord1 setUserInteractionEnabled:YES];
    
    
    
    
    UIPanGestureRecognizer *panGesture2 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture2:)];
    [self.puzzleWord2 addGestureRecognizer:panGesture2];
    [self.puzzleWord2 setUserInteractionEnabled:YES];
    
    
    
    
    
    
    UIPanGestureRecognizer *panGesture3 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture3:)];
    [self.puzzleWord3 addGestureRecognizer:panGesture3];
    [self.puzzleWord3 setUserInteractionEnabled:YES];
    
    UIPanGestureRecognizer *panGesture4 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture4:)];
    [self.puzzleWord4 addGestureRecognizer:panGesture4];
    [self.puzzleWord4 setUserInteractionEnabled:YES];
    
    
    UIPanGestureRecognizer *panGesture5 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture5:)];
    [self.puzzleWord5 addGestureRecognizer:panGesture5];
    [self.puzzleWord5 setUserInteractionEnabled:YES];
    
    
    
    
    
    UIPanGestureRecognizer *panGesture6 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture6:)];
    [self.puzzleword6 addGestureRecognizer:panGesture6];
    [self.puzzleword6 setUserInteractionEnabled:YES];
    
    
    
    UIPanGestureRecognizer *panGesture7 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture7:)];
    [self.puzzleWord7 addGestureRecognizer:panGesture7];
    [self.puzzleWord7 setUserInteractionEnabled:YES];
    
    
    UIPanGestureRecognizer *panGesture8 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                                                                    action:@selector(dragGesture8:)];
    [self.puzzleWord8 addGestureRecognizer:panGesture8];
    [self.puzzleWord8 setUserInteractionEnabled:YES];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) dragGesture1:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    
    
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
       if(self.puzzleWord1.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
    
    }
    
    
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton1 = self.puzzleWord1.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord1.center = CGPointMake(self.puzzleWord1.center.x + translation.x,
                                                   self.puzzleWord1.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                // self.puzzleWord1.center = self.theOrginalCenterButton1;
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                   rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                              , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord1.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         

                                     }else if(self.puzzleWord1.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord1.tag == 1){
                                         
                                         
                                         
                                            rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord1.tag == 2){
                                         
                                         
                                            rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord1.tag == 3){
                                         
                                         
                                            rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord1.tag == 1){
                                         
                                          rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord1.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                             
                                     }else if(self.puzzleWord1.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         

                                         
                                     }else if(self.puzzleWord1.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         

                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord1.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         

                                         
                                         
                                     }else if(self.puzzleWord1.tag == 2)
                                     {
                                         
                                          rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                            , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord1.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         

                                         
                                     }else if(self.puzzleWord1.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         

                                         
                                     }else if(self.puzzleWord1.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         

                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }
                                 
                                 

                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord1.center);
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord1.center);
                                 if (isInside == true) {
                                     
                                     self.puzzleWord1.hidden = YES;
                                     
                                    // self.puzzleWord1.backgroundColor = [UIColor yellowColor];
                                 }else{
                                     self.puzzleWord1.center = self.theOrginalCenterButton1;
                                 }
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture2:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord2.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }

    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton2 = self.puzzleWord2.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord2.center = CGPointMake(self.puzzleWord2.center.x + translation.x,
                                                   self.puzzleWord2.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord2.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord2.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord2.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord2.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord2.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord2.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }

                                // self.puzzleWord2.center = self.theOrginalCenterButton2;
                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord2.center);
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord2.center);
                                 if (isInside == true) {
                                     
                                     self.puzzleWord2.hidden = YES;
                                     //self.puzzleWord2.backgroundColor = [UIColor yellowColor];
                                 }else{
                                     self.puzzleWord2.center = self.theOrginalCenterButton2;
                                 }
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture3:(UIPanGestureRecognizer *) panGesture{
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord3.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    
    
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton3 = self.puzzleWord3.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord3.center = CGPointMake(self.puzzleWord3.center.x + translation.x,
                                                   self.puzzleWord3.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord3.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord3.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord3.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord3.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord3.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord3.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord1.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }

                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord3.center);
                                 BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord3.center);
                                 if (isInside == true) {
                                     
                                     self.puzzleWord3.hidden = YES;
                                    // self.puzzleWord3.backgroundColor = [UIColor yellowColor];
                                 }else{
                                     self.puzzleWord3.center = self.theOrginalCenterButton3;
                                 }
                               /*  NSLog(@"the centered of the button %f", self.soundButton1.center.x);
                                 NSLog(@"the center of view %f",self.view1.center.x);
                                 
                                 BOOL isInside = CGRectContainsPoint(self.view1.frame,self.soundButton1.center);
                                 if (isInside == true) {
                                     self.soundButton1.hidden = YES;
                                     self.button1.hidden = NO;
                                 }else{
                                     self.soundButton1.center = self.theOrginalCenterButton1;
                                 }
                                 
                                 */
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture4:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord4.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    
    
    
    
    
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton4 = self.puzzleWord4.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord4.center = CGPointMake(self.puzzleWord4.center.x + translation.x,
                                                   self.puzzleWord4.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord4.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord4.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord4.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord4.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord4.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButtonView.frame.size.width, self.fiveButton4.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord4.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }

                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord4.center);
                                 // BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord4.center);
                                 if (isInside == true) {
                                   
                                     self.puzzleWord4.hidden = YES;
                                     //self.puzzleWord4.backgroundColor = [UIColor yellowColor];
                                 }else{
                                     self.puzzleWord4.center = self.theOrginalCenterButton4;
                                 }
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture5:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord5.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton5 = self.puzzleWord5.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord5.center = CGPointMake(self.puzzleWord5.center.x + translation.x,
                                                   self.puzzleWord5.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord5.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord5.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord5.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord5.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord5.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord5.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }
                                 
                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord5.center);
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord5.center);
                                 if (isInside == true) {
                                     //self.soundButton1.hidden = YES;
                                     //  self.button1.hidden = NO;
                                     
                                     self.puzzleWord5.hidden = YES;
                                 }else{
                                     self.puzzleWord5.center = self.theOrginalCenterButton5;
                                 }
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                                
                                
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture6:(UIPanGestureRecognizer *) panGesture{
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleword6.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton6 = self.puzzleword6.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleword6.center = CGPointMake(self.puzzleword6.center.x + translation.x,
                                                   self.puzzleword6.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleword6.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleword6.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleword6.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleword6.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleword6.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleword6.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleword6.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleword6.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleword6.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleword6.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleword6.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleword6.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleword6.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleword6.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }
                                 

                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleword6.center);
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleword6.center);
                                 if (isInside == true) {
                                     //self.soundButton1.hidden = YES;
                                     //  self.button1.hidden = NO;
                                     
                                     self.puzzleword6.hidden = YES;
                                 }else{
                                     self.puzzleword6.center = self.theOrginalCenterButton6;
                                 }
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture7:(UIPanGestureRecognizer *) panGesture{
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord7.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton7 = self.puzzleWord7.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord7.center = CGPointMake(self.puzzleWord7.center.x + translation.x,
                                                   self.puzzleWord7.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButtonView.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord7.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton1.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord7.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton1.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButtonView.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord7.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton1.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord7.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton1.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                     }else if(self.puzzleWord7.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord7.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButtonView.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }
                                 
                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord7.center);
                                 
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord7.center);
                                 if (isInside == true) {
                                     
                                     self.puzzleWord7.hidden = YES;
                                 }else{
                                     self.puzzleWord7.center = self.theOrginalCenterButton7;
                                 }
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}
- (void) dragGesture8:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        UIButton *theView = [self.viewsArray objectAtIndex:i];
        if(self.puzzleWord8.tag == theView.tag){
            matchedView = theView;
            matchedView.tag = theView.tag;
            
        }
        
    }
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton8 = self.puzzleWord8.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.puzzleWord8.center = CGPointMake(self.puzzleWord8.center.x + translation.x,
                                                   self.puzzleWord8.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 
                                 
                                 CGRect rect;
                                 
                                 if(self.viewsArray.count == 1){
                                     
                                     rect = CGRectMake(self.oneButtonView.frame.origin.x, self.oneButtonView.frame.origin.y
                                                       , self.oneButton1.frame.size.width, self.oneButton1.frame.size.height);
                                     
                                 }if(self.viewsArray.count == 2){
                                     
                                     if(self.puzzleWord8.tag == 1){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton1.frame.size.width, self.twoButton1.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 2){
                                         
                                         rect = CGRectMake(self.twoButtonView.frame.origin.x + self.twoButton2.frame.origin.x, self.twoButtonView.frame.origin.y, self.twoButton2.frame.size.width, self.twoButton2.frame.size.height);
                                         
                                     }
                                 }if(self.viewsArray.count == 3){
                                     
                                     if(self.puzzleWord8.tag == 1){
                                         
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton1.frame.size.width, self.threeButton1.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 2){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton2.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton2.frame.size.width, self.threeButton2.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.threeButtonView.frame.origin.x + self.threeButton3.frame.origin.x, self.threeButtonView.frame.origin.y, self.threeButton3.frame.size.width, self.threeButton3.frame.size.height);
                                         
                                     }
                                     
                                     
                                 }if(self.viewsArray.count == 4){
                                     
                                     
                                     if(self.puzzleWord8.tag == 1){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton1.frame.size.width, self.fourButton1.frame.size.height);
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 2){
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton2.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton2.frame.size.width, self.fourButton2.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton3.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton3.frame.size.width, self.fourButton3.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 4){
                                         
                                         
                                         rect = CGRectMake(self.fourButtonView.frame.origin.x + self.fourButton4.frame.origin.x, self.fourButtonView.frame.origin.y, self.fourButton4.frame.size.width, self.fourButton4.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                     
                                 }if(self.viewsArray.count == 5){
                                     
                                     
                                     if(self.puzzleWord8.tag == 1){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x, self.fiveButtonView.frame.origin.y, self.fiveButton1.frame.size.width, self.fiveButton1.frame.size.height);
                                         
                                         
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 2)
                                     {
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton2.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton2.frame.size.width, self.fiveButton2.frame.size.height);
                                         
                                     }else if(self.puzzleWord8.tag == 3){
                                         
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton3.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton3.frame.size.width, self.fiveButton3.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 4){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton4.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton4.frame.size.width, self.fiveButton4.frame.size.height);
                                         
                                         
                                         
                                     }else if(self.puzzleWord8.tag == 5){
                                         
                                         rect = CGRectMake(self.fiveButtonView.frame.origin.x + self.fiveButton5.frame.origin.x
                                                           , self.fiveButtonView.frame.origin.y, self.fiveButton5.frame.size.width, self.fiveButton5.frame.size.height);
                                         
                                         
                                         
                                     }
                                     
                                     
                                     
                                     
                                     
                                     
                                 }
                                 

                                 BOOL isInside = CGRectContainsPoint(rect,self.puzzleWord8.center);
                                  BOOL isInsidePoint = CGPointEqualToPoint (matchedView.center, self.puzzleWord8.center);
                                 if (isInside == true) {
                                     //self.soundButton1.hidden = YES;
                                     //  self.button1.hidden = NO;
                                     
                                     self.puzzleWord8.hidden = YES;
                                 }else{
                                     self.puzzleWord8.center = self.theOrginalCenterButton8;
                                 }
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}

-(NSString *)getFilePath:(NSString *) fileName {
    NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [documentPaths objectAtIndex:0];
    return [documentsDir stringByAppendingPathComponent:fileName];
}

- (BOOL)copyFile:(NSString *) source toTarget:(NSString *) target{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    if ([fileManager fileExistsAtPath:target]) {
        return TRUE;
    } else {
        [fileManager copyItemAtPath:source toPath:target error:nil];
        BOOL success = TRUE;
        FMDatabase *db = [FMDatabase databaseWithPath:target];
        if (![db open]) {
            return FALSE;
        }
        if(success && SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"5.0.1")) {
            assert([fileManager fileExistsAtPath:target]);
            NSError *error = nil;
            NSURL *URL = [NSURL fileURLWithPath:target];
            
            return [URL setResourceValue:[NSNumber numberWithBool:YES] forKey:NSURLIsExcludedFromBackupKey error: &error];
        }
    }
    return FALSE;
}
-(IBAction)backBtnClicked:(id)sender{
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
}

@end
