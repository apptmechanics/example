//
//  DetailedPalabrasViewController.m
//  SidebarDemo
//
//  Created by 13CABS on 31/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "DetailedPalabrasViewController.h"
#import "FMDB.h"
#import "FMDatabase.h"
#import "CompletarPalabras.h"
#import "ViewImageViewObject.h"
@interface DetailedPalabrasViewController ()
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property(nonatomic) CGPoint theOrginalCenterButton1;
@property(nonatomic) CGPoint theOrginalCenterButton2;
@property(nonatomic) CGPoint theOrginalCenterButton3;
@property(nonatomic) CGPoint theOrginalCenterButton4;
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;

@property(nonatomic)BOOL isFirstItemMatched;
@property(nonatomic)BOOL isSecondItemMatched;
@property(nonatomic)BOOL isThirdItemMatched;
@property(nonatomic)BOOL isFourthItemMatched;

@property(nonatomic)NSInteger theLastIndex;
@property(nonatomic)NSInteger index;
@property(nonatomic)NSInteger viewIndex;

@property(nonatomic,strong)NSMutableArray *thepalabrasArray;
@property(nonatomic,strong)NSMutableArray *viewsArray;
@property(nonatomic,strong)NSMutableArray *buttonsArray;
@end

@implementation DetailedPalabrasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(backBtnClicked:)];
    self.navigationItem.leftBarButtonItem = backButton;

    
    self.index = 0;
    self.viewIndex = 0;
    self.thepalabrasArray = [[NSMutableArray alloc]init];
    self .viewsArray = [[NSMutableArray alloc]init];
    self.buttonsArray = [[NSMutableArray alloc]init];
    
   // [self.viewsArray addObject:self.view1];
   // [self.viewsArray addObject:self.view2];
   // [self.viewsArray addObject:self.view3];
   // [self.viewsArray addObject:self.view4];
    
    
    
    ViewImageViewObject *viewImageObject1 = [[ViewImageViewObject alloc]init];
    viewImageObject1.objectsView = self.view1;
    viewImageObject1.objectsView.tag = 1;
    viewImageObject1.objectsImageView = self.imageView1;
    
    
    ViewImageViewObject *viewImageObject2 = [[ViewImageViewObject alloc]init];
    viewImageObject2.objectsView = self.view2;
    viewImageObject2.objectsView.tag = 2;
    viewImageObject2.objectsImageView = self.imageView2;
    
    ViewImageViewObject *viewImageObject3 = [[ViewImageViewObject alloc]init];
    viewImageObject3.objectsView = self.view3;
    viewImageObject3.objectsView.tag = 3;
    viewImageObject3.objectsImageView = self.imageView3;
    
    ViewImageViewObject *viewImageObject4 = [[ViewImageViewObject alloc]init];
    viewImageObject4.objectsView = self.view4;
    viewImageObject4.objectsView.tag = 4;
    viewImageObject4.objectsImageView = self.imageView4;
    
    
    
    
     [self.viewsArray addObject:viewImageObject1];
     [self.viewsArray addObject:viewImageObject2];
     [self.viewsArray addObject:viewImageObject3];
     [self.viewsArray addObject:viewImageObject4];

   
    
    
    self.button1.tag = 1;
    self.button2.tag = 2;
    self.button3.tag = 3;
    self.button4.tag = 4;
    

    [self.buttonsArray addObject:self.button1];
    [self.buttonsArray addObject:self.button2];
    [self.buttonsArray addObject:self.button3];
    [self.buttonsArray addObject:self.button4];

    
  
    
    
   [self openDataBase];
    // Do any additional setup after loading the view.
    
    [self addingPanGuestures];
    
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
            
            NSLog(@"the database have been opened");
            
          //  NSInteger dbId = [userDefaults integerForKey:@"addressDBId"];
            NSString * query = [NSString stringWithFormat:@"select * from words WHERE image_id IS NOT NULL AND title like 'a%%'"];
            
            FMResultSet *results = [db executeQuery:query];
            while([results next]) {
                
                CompletarPalabras *newObject = [[CompletarPalabras alloc]init];
                NSString * englishWord = [results stringForColumn:@"content_english"];
                NSString * spanishWord = [results stringForColumn:@"title"];
                NSString * spanishSound = [results stringForColumn:@"sound_title"];
                
                NSData *asciiEnglishContent = [englishWord dataUsingEncoding:NSASCIIStringEncoding
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
            
            NSLog(@"the array count is %lu",(unsigned long)self.thepalabrasArray.count);
            CompletarPalabras *theUsedObject = [self.thepalabrasArray objectAtIndex:0];
            NSLog(@"the english word is %@",theUsedObject.spanishSound);
            [self shuffle];
            self.viewsArray  = [self shuffleArray:self.viewsArray];
            
            
            [self addingTags];
            
            
            
            self.buttonsArray = [self shuffleArray:self.buttonsArray];
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


-(void)showMethod{
    
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
  
    
    ViewImageViewObject *shuffledObject = [self.viewsArray objectAtIndex:self.viewIndex];
    UIImageView *shuffledImageView = shuffledObject.objectsImageView;
    CompletarPalabras *parablas = [self.thepalabrasArray objectAtIndex:self.index];
   [self.button1 setTitle:parablas.spanishWord forState:UIControlStateNormal];
    NSString * immageName = [NSString stringWithFormat:@"%@.%@", [parablas.spanishWord lowercaseString], @"jpg"];
    shuffledImageView.image = [UIImage imageNamed:immageName];
  
    
    
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    

    
    ViewImageViewObject *shuffledObject1 = [self.viewsArray objectAtIndex:self.viewIndex+1];
    UIImageView *shuffledImageView1= shuffledObject1.objectsImageView;
    CompletarPalabras *parablas1 = [self.thepalabrasArray objectAtIndex:self.index];
    self.button2.titleLabel.text = parablas1.englishWord;
   // self.button1.titleLabel.text = parablas.englishWord;
    [self.button2 setTitle:parablas1.spanishWord forState:UIControlStateNormal];
    NSString * immageName1 = [NSString stringWithFormat:@"%@.%@", [parablas1.spanishWord lowercaseString], @"jpg"];
    shuffledImageView1.image = [UIImage imageNamed:immageName1];
    
    
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    

    
    
    ViewImageViewObject *shuffledObject2 = [self.viewsArray objectAtIndex:self.viewIndex+2];
    UIImageView *shuffledImageView2 = shuffledObject2.objectsImageView;
    CompletarPalabras *parablas2 = [self.thepalabrasArray objectAtIndex:self.index];
    [self.button3 setTitle:parablas2.spanishWord forState:UIControlStateNormal];
    NSString * immageName2 = [NSString stringWithFormat:@"%@.%@", [parablas2.spanishWord lowercaseString], @"jpg"];
    shuffledImageView2.image = [UIImage imageNamed:immageName2];
    
    
    self.index = self.index + 1;
    
    if(self.index == self.thepalabrasArray.count){
        
        self.index = 0;
        
    }
    

    
    ViewImageViewObject *shuffledObject3 = [self.viewsArray objectAtIndex:self.viewIndex+3];
    UIImageView *shuffledImageView3 = shuffledObject3.objectsImageView;
    CompletarPalabras *parablas3 = [self.thepalabrasArray objectAtIndex:self.index];
    [self.button4 setTitle:parablas3.spanishWord forState:UIControlStateNormal];

    NSString * immageName3 = [NSString stringWithFormat:@"%@.%@", [parablas3.spanishWord lowercaseString], @"jpg"];
    shuffledImageView3.image = [UIImage imageNamed:immageName3];
    
    
    
    
}




-(void)addingPanGuestures{
    
    UIPanGestureRecognizer *panGesture1 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture1:)];
    [self.button1 addGestureRecognizer:panGesture1];
    [self.button1 setUserInteractionEnabled:YES];
    
    UIPanGestureRecognizer *panGesture2 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture2:)];
    [self.button2 addGestureRecognizer:panGesture2];
    [self.button2 setUserInteractionEnabled:YES];
    
    UIPanGestureRecognizer *panGesture3 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture3:)];
    [self.button3 addGestureRecognizer:panGesture3];
    [self.button3 setUserInteractionEnabled:YES];
    
    UIPanGestureRecognizer *panGesture4 = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                                  action:@selector(dragGesture4:)];
    [self.button4 addGestureRecognizer:panGesture4];
    [self.button4 setUserInteractionEnabled:YES];
    

    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void) dragGesture1:(UIPanGestureRecognizer *) panGesture{
    CGPoint translation = [panGesture translationInView:self.view];
    
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
        if(self.button1.tag == theView.objectsView.tag){
            matchedView = theView.objectsView;
            matchedView.tag = theView.objectsView.tag;
            
        }
        
    }
     
    
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton1 = self.button1.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.button1.center = CGPointMake(self.button1.center.x + translation.x,
                                                  self.button1.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                BOOL isInside = CGRectContainsPoint(matchedView.frame,self.button1.center);
                                  if (isInside == true) {
                                      
                                      NSLog(@"the view tage %ld",(long)matchedView.tag);
                                      
                                      if(matchedView.tag == 1){
                                          
                                          self.isFirstItemMatched = true;
                                          
                                      }else if(matchedView.tag == 2){
                                          
                                          self.isSecondItemMatched = true;
                                          
                                      }else if(matchedView.tag == 3){
                                          
                                          self.isThirdItemMatched = true;
                                          
                                      }else if(matchedView.tag == 4){
                                          
                                          self.isFourthItemMatched = true;
                                          
                                      }
                                      

                                      
                                      
                                      
                                      
                                  
                                    //  self.button1.backgroundColor = [UIColor yellowColor];
                                      
                                      self.button1.hidden = YES;
                                  
                                  }else{
                                      //self.button1.backgroundColor = [UIColor redColor];

                                 self.button1.center = self.theOrginalCenterButton1;
                                  }
                                  
                                
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
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
- (void) dragGesture2:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
        if(self.button2.tag == theView.objectsView.tag){
            matchedView = theView.objectsView;
            matchedView.tag = theView.objectsView.tag;
            
        }
        
    }
    
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton2 = self.button2.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.button2.center = CGPointMake(self.button2.center.x + translation.x,
                                                  self.button2.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 //self.button2.center = self.theOrginalCenterButton2;
                                  NSLog(@"the centered of the button %f", self.button2.center.x);
                                  NSLog(@"the center of view %f",self.view1.center.x);
                                  
                                  BOOL isInside = CGRectContainsPoint(matchedView.frame,self.button2.center);
                                 if (isInside == true) {
                                     
                                     NSLog(@"the view tage %ld",(long)matchedView.tag);
                                     
                                     if(matchedView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(matchedView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(matchedView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(matchedView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }
                                     
                                     self.button2.hidden = YES;
                                     
                                 }else{
                                     //self.button2.backgroundColor = [UIColor redColor];
                                     
                                     self.button2.center = self.theOrginalCenterButton2;
                                 }

                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
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
- (void) dragGesture3:(UIPanGestureRecognizer *) panGesture{
    
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
        if(self.button3.tag == theView.objectsView.tag){
            matchedView = theView.objectsView;
            matchedView.tag = theView.objectsView.tag;
            
        }
        
    }
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton3 = self.button3.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.button3.center = CGPointMake(self.button3.center.x + translation.x,
                                                  self.button3.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 NSLog(@"the centered of the button %f", self.button3.center.x);
                                 NSLog(@"the center of view %f",self.view1.center.x);
                                 
                                 BOOL isInside = CGRectContainsPoint(matchedView.frame,self.button3.center);
                                 if (isInside == true) {
                                     
                                     NSLog(@"the view tage %ld",(long)matchedView.tag);
                                     
                                     if(matchedView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(matchedView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(matchedView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(matchedView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }
                                     self.button3.hidden = YES;
                                     
                                     
                                 }else{
                                     //self.button3.backgroundColor = [UIColor redColor];
                                     
                                     self.button3.center = self.theOrginalCenterButton3;
                                 }
                                 
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
                                 
                                 
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
- (void) dragGesture4:(UIPanGestureRecognizer *) panGesture{
    
    UIView *matchedView;
    
    for(int i=0;i< self.viewsArray.count;i++){
        ViewImageViewObject *theView = [self.viewsArray objectAtIndex:i];
        if(self.button4.tag == theView.objectsView.tag){
            matchedView = theView.objectsView;
            matchedView.tag = theView.objectsView.tag;
            
        }
        
    }
    
    
    CGPoint translation = [panGesture translationInView:self.view];
    
    switch (panGesture.state) {
        case UIGestureRecognizerStateBegan:{
            self.theOrginalCenterButton4 = self.button4.center;
        }
            break;
        case UIGestureRecognizerStateChanged:{
            self.button4.center = CGPointMake(self.button4.center.x + translation.x,
                                                  self.button4.center.y + translation.y);
        }
            break;
        case UIGestureRecognizerStateEnded:{
            [UIView animateWithDuration:0.10
                             animations:^{
                                 NSLog(@"the centered of the button %f", self.button4.center.x);
                                 NSLog(@"the center of view %f",self.view1.center.x);
                                 
                                 BOOL isInside = CGRectContainsPoint(matchedView.frame,self.button4.center);
                                 if (isInside == true) {
                                     
                                     NSLog(@"the view tage %ld",(long)matchedView.tag);
                                     
                                     if(matchedView.tag == 1){
                                         
                                         self.isFirstItemMatched = true;
                                         
                                     }else if(matchedView.tag == 2){
                                         
                                         self.isSecondItemMatched = true;
                                         
                                     }else if(matchedView.tag == 3){
                                         
                                         self.isThirdItemMatched = true;
                                         
                                     }else if(matchedView.tag == 4){
                                         
                                         self.isFourthItemMatched = true;
                                         
                                     }
                                     self.button4.hidden = YES;
                                     
                                 }else{
                                     //self.button4.backgroundColor = [UIColor redColor];
                                     
                                      self.button4.center = self.theOrginalCenterButton4;
                                 }
                                 
                                 
                                 // NSLog(@"the bool is the only value %hhd",isPointInsideView);
                             }
                             completion:^(BOOL finished){
                                 NSLog(@"Returned");
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

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
    




-(void) refresh{
    
    self.button1.hidden = NO;
    self.button2.hidden = NO;
    self.button3.hidden = NO;
    self.button4.hidden = NO;
    
    
    
    self.isFirstItemMatched = NO;
    self.isSecondItemMatched = NO;
    self.isThirdItemMatched = NO;
    self.isFourthItemMatched = NO;
    
    
    self.index = self.index + 1;
    self.viewIndex = 0;
    [self showMethod];
    

    
    
}
-(IBAction)backBtnClicked:(id)sender{
    
    [self dismissViewControllerAnimated:NO completion:nil];
    
}

@end
