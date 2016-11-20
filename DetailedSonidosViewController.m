//
//  DetailedSonidosViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 31/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "DetailedSonidosViewController.h"
#import "ViewImageViewObject.h"
#import "FMDB.h"
#import "FMDatabase.h"
#import "CompletarPalabras.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface DetailedSonidosViewController ()
@property (weak, nonatomic) IBOutlet UIButton *soundButton1;
@property (weak, nonatomic) IBOutlet UIButton *soundButton2;
@property (weak, nonatomic) IBOutlet UIButton *soundButton3;
@property (weak, nonatomic) IBOutlet UIButton *soundButton4;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;

@property(weak,nonatomic)NSString *soundButton1Sound;
@property(weak,nonatomic)NSString *soundButton2Sound;
@property(weak,nonatomic)NSString *soundButton3Sound;
@property(weak,nonatomic)NSString *soundButton4Sound;


@property(nonatomic)BOOL isFirstItemMatched;
@property(nonatomic)BOOL isSecondItemMatched;
@property(nonatomic)BOOL isThirdItemMatched;
@property(nonatomic)BOOL isFourthItemMatched;


@property (weak, nonatomic) IBOutlet UIImageView *imageView1;

@property (weak, nonatomic) IBOutlet UIImageView *imageview2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;

@property(nonatomic)NSInteger theLastIndex;
@property(nonatomic)NSInteger index;
@property(nonatomic)NSInteger viewsIndex;
@property(nonatomic)NSInteger soundIndex;

@property(nonatomic) CGPoint theOrginalCenterButton1;
@property(nonatomic) CGPoint theOrginalCenterButton2;
@property(nonatomic) CGPoint theOrginalCenterButton3;
@property(nonatomic) CGPoint theOrginalCenterButton4;
@property(nonatomic,strong)NSMutableArray *thepalabrasArray;

@property(nonatomic,strong)NSMutableArray *viewsArray;
@property(nonatomic,strong)NSMutableArray *buttonsArray;

@property(nonatomic)BOOL theBool;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;

@property (weak, nonatomic) IBOutlet UIView *view1;


@property (nonatomic, strong) AVAudioPlayer *audioPlayer;

@end

@implementation DetailedSonidosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(backBtnClicked:)];
    self.navigationItem.leftBarButtonItem = backButton;
    
    
    
    self.index = 0;

    // Do any additional setup after loading the view.
    
   
    self.thepalabrasArray = [[NSMutableArray alloc]init];
    self .viewsArray = [[NSMutableArray alloc]init];
    self.buttonsArray = [[NSMutableArray alloc]init];
    
    ViewImageViewObject *viewImageObject1 = [[ViewImageViewObject alloc]init];
    viewImageObject1.objectsView = self.view1;
    viewImageObject1.objectsView.tag = 1;
    viewImageObject1.objectsImageView = self.imageView1;
    viewImageObject1.correctLabelButton =self.button1;
    
    
    ViewImageViewObject *viewImageObject2 = [[ViewImageViewObject alloc]init];
    viewImageObject2.objectsView = self.view2;
    viewImageObject2.objectsView.tag = 2;
    viewImageObject2.objectsImageView = self.imageview2;
    viewImageObject2.correctLabelButton = self.button2;
    
    ViewImageViewObject *viewImageObject3 = [[ViewImageViewObject alloc]init];
    viewImageObject3.objectsView = self.view3;
   viewImageObject3.objectsView.tag = 3;
    viewImageObject3.objectsImageView = self.imageView3;
    viewImageObject3.correctLabelButton = self.button3;
    
    ViewImageViewObject *viewImageObject4 = [[ViewImageViewObject alloc]init];
    viewImageObject4.objectsView = self.view4;
    viewImageObject4.objectsView.tag = 4;
    viewImageObject4.objectsImageView = self.imageView4;
    viewImageObject4.correctLabelButton = self.button4;

   

    [self.viewsArray addObject:viewImageObject1];
    [self.viewsArray addObject:viewImageObject2];
    [self.viewsArray addObject:viewImageObject3];
    [self.viewsArray addObject:viewImageObject4];
    
    
    
    
    self.soundButton1.tag = 1;
    self.soundButton2.tag = 2;
    self.soundButton3.tag = 3;
    self.soundButton4.tag = 4;
    
    [self.soundButton1 addTarget:self action:@selector(soundButton1Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.soundButton2 addTarget:self action:@selector(soundButton2Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.soundButton3 addTarget:self action:@selector(soundButton3Clicked:) forControlEvents:UIControlEventTouchUpInside];
    [self.soundButton4 addTarget:self action:@selector(soundButton4Clicked:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.buttonsArray addObject:self.soundButton1];
    [self.buttonsArray addObject:self.soundButton2];
    [self.buttonsArray addObject:self.soundButton3];
    [self.buttonsArray addObject:self.soundButton4];
    


    
    




    [self openDataBase];
  // self.viewsArray  = [self shuffleArray:self.viewsArray];
    [self addingTags];
    
    ViewImageViewObject *theUsedObject = [self.viewsArray objectAtIndex:0];
  //  NSLog(@"teh log is %ld",(long)theUsedObject.objectsView.tag);


    self.button1.hidden = YES;
    
    UIPanGestureRecognizer *panGesture1 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture1:)];
    [self.soundButton1 addGestureRecognizer:panGesture1];
    [self.soundButton1 setUserInteractionEnabled:YES];
    
    self.button2.hidden = YES;
    
    UIPanGestureRecognizer *panGesture2 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture2:)];
    [self.soundButton2 addGestureRecognizer:panGesture2];
    [self.soundButton2 setUserInteractionEnabled:YES];
    
    
    self.button3.hidden = YES;
    
    UIPanGestureRecognizer *panGesture3 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture3:)];
    [self.soundButton3 addGestureRecognizer:panGesture3];
    [self.soundButton3 setUserInteractionEnabled:YES];
    
    
    self.button4.hidden = YES;
    
    UIPanGestureRecognizer *panGesture4 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture4:)];
    [self.soundButton4 addGestureRecognizer:panGesture4];
    [self.soundButton4 setUserInteractionEnabled:YES];
    



}



-(void)openDataBase{
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *docsPath = [paths objectAtIndex:0];
    NSString *dbFilePath = [docsPath stringByAppendingPathComponent:@"abc.db"];
    
    
    NSString *dbPathFromApp = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"abc.db"];
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    
    FMDatabase *db;
    
    if([self copyFile:dbPathFromApp toTarget:dbFilePath]){
        
        db = [FMDatabase databaseWithPath:[self getFilePath:@"abc.db"]];
        if([db open]){
            
           // NSLog(@"the database have been opened");
            
            //  NSInteger dbId = [userDefaults integerForKey:@"addressDBId"];
            NSString * query = [NSString stringWithFormat:@"select * from words WHERE image_id IS NOT NULL AND title like 'a%%'"];
            
            FMResultSet *results = [db executeQuery:query];
            while([results next]) {
                
                CompletarPalabras *newObject = [[CompletarPalabras alloc]init];
                
                NSString *englishContent = [results stringForColumn:@"content_english"];
                NSString *spanishWord = [results stringForColumn:@"title"];
                NSString *spanishSound = [results stringForColumn:@"sound_title"];
                
                
                
                NSData *asciiEnglishContent = [englishContent dataUsingEncoding:NSASCIIStringEncoding
                                                        allowLossyConversion:YES];
                
                NSData *asciiSpanishWord = [spanishWord dataUsingEncoding:NSASCIIStringEncoding
                                                        allowLossyConversion:YES];
                
                NSData *asciiSpanishSound = [spanishSound dataUsingEncoding:NSASCIIStringEncoding
                                                        allowLossyConversion:YES];
                
                
                newObject.englishWord = [[NSString alloc] initWithData:asciiEnglishContent
                                                              encoding:NSASCIIStringEncoding];
                
                newObject.spanishWord = [[NSString alloc] initWithData:asciiSpanishWord
                                                              encoding:NSASCIIStringEncoding];
                
                
                newObject.spanishSound = [[NSString alloc] initWithData:asciiSpanishSound
                                                               encoding:NSASCIIStringEncoding];
                
                
                [self.thepalabrasArray addObject:newObject];
            }
            
          
            CompletarPalabras *theUsedObject = [self.thepalabrasArray objectAtIndex:0];
           
            [self shuffle];
           
            
            
            [self addingTags];
            
            self.viewsArray  = [self shuffleArray:self.viewsArray];
            
            
            [self showMethod];
            
            
            
        }
    }
    
}
-(void)addingTags{
    
    
    
    ViewImageViewObject *view1 = [self.viewsArray objectAtIndex:0];
    view1.objectsView.tag = 1;
    ViewImageViewObject *view2 = [self.viewsArray objectAtIndex:1];
    view2.objectsView.tag = 2;
    
    ViewImageViewObject *view3 = [self.viewsArray objectAtIndex:2];
    view3.objectsView.tag = 3;
    ViewImageViewObject *view4 = [self.viewsArray objectAtIndex:3];
    view4.objectsView.tag = 4;
    
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
    //NSLog(@"the spanish word is %@",theUsedObject.spanishSound);
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
   // NSLog(@"the spanish word is %@",theUsedObject.spanishSound);
    
    
    
    
    return normalArray;
}


- (void)wasDragged:(UIPanGestureRecognizer *)recognizer {
    UIButton *button = (UIButton *)recognizer.view;
    CGPoint translation = [recognizer translationInView:button];
    
    button.center = CGPointMake(button.center.x + translation.x, button.center.y + translation.y);
    [recognizer setTranslation:CGPointZero inView:button];
    
    
    if(self.theBool == true){
        
       // button.center
        
    }
    
  //  NSLog(@"hi i am here");
}


#pragma mark -
#pragma mark UIPanGestureRecognizer selector
- (void) dragGesture1:(UIPanGestureRecognizer *) panGesture{
    /*
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
        if(self.soundButton1.tag == theView.objectsView.tag){
            matchedView = theView.objectsView;
            matchedView.tag = theView.objectsView.tag;
            
            if(theView.objectsView.tag == 1){
                
                self.isFirstItemMatched = true;
                
            }else if(theView.objectsView.tag == 2){
                
                self.isSecondItemMatched = true;
                
            }else if(theView.objectsView.tag == 3){
                
                self.isThirdItemMatched = true;
                
            }else if(theView.objectsView.tag == 4){
                
                self.isFourthItemMatched = true;
                
            }
            
            
            
            
            
            
        }
        
    }
    */
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton1 = self.soundButton1.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.soundButton1.center = CGPointMake(self.soundButton1.center.x + translation.x,
                                           self.soundButton1.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 //self.soundButton1.center = self.theOrginalCenterButton1;
                                 
                                 
                                 
                                 for(int i=0;i< self.viewsArray.count;i++){
                                     ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
                                     if(self.soundButton1.tag == theView.objectsView.tag){
                                         
                                        
                                         

                                 
                                 BOOL isInside = CGRectContainsPoint(theView.objectsView.frame,self.soundButton1.center);
                                 if (isInside == true) {
                                     
                                 
                                     
                                     self.soundButton1.hidden = YES;
                                     theView.correctLabelButton.hidden = NO;
                                     
                                     if(theView.objectsView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }

                                     
                                     
                                 }else{
                                     self.soundButton1.center = self.theOrginalCenterButton1;
                                 }
                                 
                                 
                               
                             }
                                     
                                     
                                     
                                 }
                                 
                                 
                                 
                                 
                                 
                             }
                             completion:^(BOOL finished){
                                // NSLog(@"Returned");
                                 
                                 
                                 if(self.isFirstItemMatched == true && self.isSecondItemMatched == true){
                                     if(self.isThirdItemMatched == true && self.isFourthItemMatched == true){
                                         
                                         
                                         [self performSelector:@selector(refresh) withObject:self afterDelay:1.0 ];
                                         //[self refresh];
                                     }
                                 }
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}


#pragma mark -
#pragma mark UIPanGestureRecognizer selector
- (void) dragGesture2:(UIPanGestureRecognizer *) panGesture{
    
   

    
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton2 = self.soundButton2.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.soundButton2.center = CGPointMake(self.soundButton2.center.x + translation.x,
                                                   self.soundButton2.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 //self.soundButton2.center = self.theOrginalCenterButton1;
                                 for(int i=0;i< self.viewsArray.count;i++){
                                     ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
                                     if(self.soundButton2.tag == theView.objectsView.tag){
                                         
                                         
                                        

                                 
                                 BOOL isInside = CGRectContainsPoint(theView.objectsView.frame,self.soundButton2.center);
                                 if (isInside == true) {
                                     self.soundButton2.hidden = YES;
                                      theView.correctLabelButton.hidden = NO;
                                     
                                     
                                     if(theView.objectsView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }
                                     
                                     
                                     
                                 }else{
                                     self.soundButton2.center = self.theOrginalCenterButton2;
                                 }
                                 
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                                     
                                 }
                                 
                                 
                                 
                                 
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
                                 if(self.isFirstItemMatched == true && self.isSecondItemMatched == true){
                                     if(self.isThirdItemMatched == true && self.isFourthItemMatched == true){
                                         
                                         [self performSelector:@selector(refresh) withObject:self afterDelay:1.0 ];

                                     }
                                 }
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}

- (void) dragGesture3:(UIPanGestureRecognizer *) panGesture{
    
    
   
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton3 = self.soundButton3.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.soundButton3.center = CGPointMake(self.soundButton3.center.x + translation.x,
                                                   self.soundButton3.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 //self.soundButton1.center = self.theOrginalCenterButton3;
                                 for(int i=0;i< self.viewsArray.count;i++){
                                     ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
                                     if(self.soundButton3.tag == theView.objectsView.tag){
                                         
                                 BOOL isInside = CGRectContainsPoint(theView.objectsView.frame,self.soundButton3.center);
                                 if (isInside == true) {
                                     self.soundButton3.hidden = YES;
                                     theView.correctLabelButton.hidden = NO;
                                     if(theView.objectsView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }

                                     
                                     
                                 }else{
                                     self.soundButton3.center = self.theOrginalCenterButton3;
                                 }
                                 
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                                     
                                 }
                                 
                                 
                                 
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 if(self.isFirstItemMatched == true && self.isSecondItemMatched == true){
                                     if(self.isThirdItemMatched == true && self.isFourthItemMatched == true){
                                         
                                          [self performSelector:@selector(refresh) withObject:self afterDelay:1.0 ];
                                     }
                                 }
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
}




- (void) dragGesture4:(UIPanGestureRecognizer *) panGesture{
    
    
   
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton4 = self.soundButton4.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.soundButton4.center = CGPointMake(self.soundButton4.center.x + translation.x,
                                                   self.soundButton4.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 //self.soundButton4.center = self.theOrginalCenterButton1;
                                 
                                 for(int i=0;i< self.viewsArray.count;i++){
                                     ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
                                     if(self.soundButton4.tag == theView.objectsView.tag){

                                        
                                 
                                 BOOL isInside = CGRectContainsPoint(theView.objectsView.frame,self.soundButton4.center);
                                 if (isInside == true) {
                                     self.soundButton4.hidden = YES;
                                     theView.correctLabelButton.hidden = NO;
                                     
                                     if(theView.objectsView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(theView.objectsView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }
                                     

                                 }else{
                                     self.soundButton4.center = self.theOrginalCenterButton4;
                                 }
                                 
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                                     }}
                                 
                                 
                                 
                                 
                                 
                             }
             
                                     
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 if(self.isFirstItemMatched == true && self.isSecondItemMatched == true){
                                     if(self.isThirdItemMatched == true && self.isFourthItemMatched == true){
                                         
                                          [self performSelector:@selector(refresh) withObject:self afterDelay:1.0 ];
                                     }
                                 }
                                 
                                 
                                 
                             }];
        }
            break;
        default:
            break;
    }
    
    [panGesture setTranslation:CGPointZero inView:self.view];
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

- (IBAction)soundButton1Clicked:(UIButton *)sender {
    
     NSLog(@"%s - button tapped",__FUNCTION__);
    
    
    NSLog(@"the tag of the  button clicked is %ld",(long)sender.tag);
    
    
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.soundIndex];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:[self.soundButton1Sound lowercaseString]ofType:@"mp3"];
    NSLog(@"the sooud name is %@",self.soundButton1Sound);
   
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
   
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];

    
    
    
    
}

- (IBAction)soundButton2Clicked:(id)sender {
    
    
    
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.soundIndex+1];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:[self.soundButton2Sound lowercaseString]ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];

    
    
    
}

- (IBAction)soundButton3Clicked:(id)sender {
    
    
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.soundIndex+2];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:[self.soundButton3Sound lowercaseString]ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
    
    
    
}

- (IBAction)soundButton4Clicked:(id)sender {
    
    
    
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.soundIndex+3];
    
    NSString *audioPath = [[NSBundle mainBundle] pathForResource:[self.soundButton4Sound lowercaseString]ofType:@"mp3"];
    //NSLog(@"%@", audioPath);
    NSURL *audioURL = [NSURL fileURLWithPath:audioPath];
    //NSLog(@"%@", audioURL);
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:audioURL error:nil];
    [self.audioPlayer play];
    
    
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





-(void)showMethod{
    
    
    self.soundIndex = self.index;
    
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    
    
    ViewImageViewObject *shuffledObject = [self.viewsArray objectAtIndex:self.viewsIndex];
    UIImageView *shuffledImageView = shuffledObject.objectsImageView;
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.index];
    //shuffledObject.correctLabelButton
   
    NSLog(@"the spanish sound %@", parablas.spanishSound);
    
    self.soundButton1Sound  = parablas.spanishSound;
    
    
   [shuffledObject.correctLabelButton setTitle:parablas.spanishWord forState:UIControlStateNormal];
    NSString * immageName = [NSString stringWithFormat:@"%@.%@", [parablas.spanishWord lowercaseString], @"jpg"];
    NSLog(@"the immage name for the  %@",immageName);
    shuffledImageView.image = [UIImage imageNamed:immageName];
    
    
   
    
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    
    
    ViewImageViewObject *shuffledObject1 = [self.viewsArray objectAtIndex:self.viewsIndex+1];
    UIImageView *shuffledImageView1= shuffledObject1.objectsImageView;
    CompletarPalabras *parablas1 = [self.thepalabrasArray objectAtIndex:self.index];
    NSLog(@"the spanish sound1 %@", parablas1.spanishSound);

    
    self.soundButton2Sound = parablas1.spanishSound;
    self.button2.titleLabel.text = parablas1.englishWord;
    // self.button1.titleLabel.text = parablas.englishWord;
    [shuffledObject1.correctLabelButton setTitle:parablas1.spanishWord forState:UIControlStateNormal];
    NSString * immageName1 = [NSString stringWithFormat:@"%@.%@", [parablas1.spanishWord lowercaseString], @"jpg"];
  
    
    
    
    
    
    
     NSLog(@"the immage name %@",immageName1);
    shuffledImageView1.image = [UIImage imageNamed:immageName1];
    
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    
    ViewImageViewObject *shuffledObject2 = [self.viewsArray objectAtIndex:self.viewsIndex+2];
    UIImageView *shuffledImageView2 = shuffledObject2.objectsImageView;
    CompletarPalabras *parablas2 = [self.thepalabrasArray objectAtIndex:self.index];
    
     NSLog(@"the spanish sound3 %@", parablas2.spanishSound);
    self.soundButton3Sound = parablas2.spanishSound;
    
    
    [shuffledObject2.correctLabelButton setTitle:parablas2.spanishWord forState:UIControlStateNormal];
    NSString * immageName2 = [NSString stringWithFormat:@"%@.%@", [parablas2.spanishWord lowercaseString], @"jpg"];
    
    NSArray *tagschemes2 = [NSArray arrayWithObjects:NSLinguisticTagSchemeLanguage, nil];
    NSLinguisticTagger *tagger2 = [[NSLinguisticTagger alloc] initWithTagSchemes:tagschemes2 options:0];
    [tagger2 setString:immageName2];
    NSString *language2 = [tagger2 tagAtIndex:0 scheme:NSLinguisticTagSchemeLanguage tokenRange:NULL sentenceRange:NULL];
    
    
    NSLog(@"the language is %@", language2);

    
    
    shuffledImageView2.image = [UIImage imageNamed:immageName2];
     NSLog(@"the immage name %@",immageName2);
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    
    ViewImageViewObject *shuffledObject3 = [self.viewsArray objectAtIndex:self.viewsIndex+3];
    UIImageView *shuffledImageView3 = shuffledObject3.objectsImageView;
    CompletarPalabras *parablas3 = [self.thepalabrasArray objectAtIndex:self.index];
    self.soundButton4Sound = parablas3.spanishSound;
     NSLog(@"the spanish sound4 %@", parablas3.spanishSound);
    
    
   [shuffledObject3.correctLabelButton setTitle:parablas3.spanishWord forState:UIControlStateNormal];
    
    NSString * immageName3 = [NSString stringWithFormat:@"%@.%@", [parablas3.spanishWord lowercaseString], @"jpg"];
    
     NSLog(@"the immage name %@",immageName3);
    shuffledImageView3.image = [UIImage imageNamed:immageName3];
    
   
    
    
    
    
    
    
    

}


-(char)getRandomChar
{
    char test[] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    int r = arc4random() % 26;
   // NSLog(@"%c", test[r]);
    return test[r];
}


-(void)refresh{
    
    
    self.button1.hidden = YES;
    self.button2.hidden = YES;
    self.button3.hidden = YES;
    self.button4.hidden = YES;
    
    
    self.soundButton1.hidden = NO;
    self.soundButton2.hidden = NO;
    self.soundButton3.hidden = NO;
    self.soundButton4.hidden = NO;
    
    
    
    self.isFirstItemMatched = NO;
    self.isSecondItemMatched = NO;
    self.isThirdItemMatched = NO;
    self.isFourthItemMatched = NO;
    
    
    
    
   
    self.index = self.index + 1;
    self.viewsIndex = 0;
    [self showMethod];
    
}
-(IBAction)backBtnClicked:(id)sender{
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
}


@end
