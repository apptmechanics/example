//
//  SimplesAndWordsCollectionViewController.m
//  SidebarDemo
//
//  Created by sushma on 13/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "SimplesAndWordsCollectionViewController.h"
#import "AppController.h"
#import "SimplesDetailedViewController.h"
#import "ParablasViewController.h"
#import "DetailedPalabrasViewController.h"
#import "DetailedSillabusViewController.h"
#import "DetailedSonidosViewController.h"


@interface SimplesAndWordsCollectionViewController ()

@property (strong,nonatomic) NSMutableArray *letterArray;
@property(strong,nonatomic)AppController *appController;
@property (strong,nonatomic) NSMutableArray *sonidosDoubleLetterArray;
@property (strong,nonatomic) NSMutableArray *palabrasLetterArray;




@end

@implementation SimplesAndWordsCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

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
    self.navigationItem.hidesBackButton = YES;
    self.letterArray = [[NSMutableArray alloc]init];
    self.appController = [AppController sharedManager];
    
    
    

    
    
    
    
    
    
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    [self.collectionView reloadData];
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    if(self.appController.isSimples == true){
        
        self.letterArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"Ñ",@"O",@"P",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        
    }else if(self.appController.isCompuestos == true){
        self.letterArray = [NSMutableArray arrayWithObjects:@"Bl",@"Br",@"Ch",@"Cl",@"Dr",@"Fl",@"Fr",@"Gl",@"Gr",@"Gu",@"I",@"Ll",@"Pl",@"Pr",@"Qu",@"Rr",@"Tl",@"Tr",@"U", nil];
        
    }else if(self.appController.isParablas == true){
        
        self.letterArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"Ñ",@"O",@"P",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        
        
        
    }else if(self.appController.isDetailedPalabras == true){
        
        self.letterArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"Ñ",@"O",@"P",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        

        
    }else if(self.appController.isDetailedSilabas == true){
        
        
        self.letterArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"Ñ",@"O",@"P",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        

    }else if(self.appController.isDetailedSounidos == true){
        
        
        self.letterArray = [NSMutableArray arrayWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"Ñ",@"O",@"P",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z", nil];
        

    }

    
    NSLog(@"the view appler ");
    
    
    [self.collectionView reloadData];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [self.letterArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SimplesAndWordsCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.bookMark.hidden = YES;
    cell.dateLabel.hidden = YES;
    cell.lastSeenLabel.hidden = YES;
    

    
    
    if(self.appController.didCollectionViewCliked == true){
        
        if(self.appController.arrayNumber == indexPath.row){
            cell.bookMark.hidden = NO;
            cell.dateLabel.hidden = NO;
            NSString *dateString = [self curentDateStringFromDate:[NSDate date] withFormat:@"MMM-dd-yyyy"];//[self dateToString:[NSDate date]];
            
            cell.dateLabel.text = dateString;
            cell.lastSeenLabel.hidden = NO;
            cell.lastSeenLabel.text = self.appController.detailedString;
        }
        
    }
    
    cell.labelSet.text = self.letterArray[indexPath.row];
    cell.labelSet.textColor = [self randomColor];
    return cell;
}


- (UIColor *)randomColor
{
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.7;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.9;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    return color;
}

#pragma mark <UICollectionViewDelegate>




-(void)collectionView:(UICollectionView *)collectionView
didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    
    if(self.appController.isDetailedSounidos == true){
        
        
        self.appController.clickedString = [self.letterArray objectAtIndex:indexPath.row];
        
        DetailedSonidosViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailedSonidosViewController"];
        
        
        UINavigationController *naigationCOntroller = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [self presentViewController:naigationCOntroller animated:NO completion:nil];
        
    }else if(self.appController.isDetailedSilabas == true){
        
        
        self.appController.clickedString = [self.letterArray objectAtIndex:indexPath.row];
        
        DetailedSillabusViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailedSillabusViewController"];
        
        
        UINavigationController *naigationCOntroller = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [self presentViewController:naigationCOntroller animated:NO completion:nil];
    }
    else if(self.appController.isDetailedPalabras == true){
        
        
        self.appController.clickedString = [self.letterArray objectAtIndex:indexPath.row];
        
        DetailedPalabrasViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailedPalabrasViewController"];
        
        
        UINavigationController *naigationCOntroller = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [self presentViewController:naigationCOntroller animated:NO completion:nil];
        
    }else
    
    
    
    
    
    
    
    
     if(self.appController.isParablas == true){
        
         self.appController.clickedString = [self.letterArray objectAtIndex:indexPath.row];
        
        ParablasViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ParablasViewController"];

        
          UINavigationController *naigationCOntroller = [[UINavigationController alloc]initWithRootViewController:vc];
        
            [self presentViewController:naigationCOntroller animated:NO completion:nil];
        
    }else if((self.appController.isSimples == true)|| (self.appController.isCompuestos == true)) {
        
        
        
        self.appController.clickedString = [self.letterArray objectAtIndex:indexPath.row];
        
        self.appController.didCollectionViewCliked = YES;
        self.appController.arrayNumber = indexPath.row;
        
        
        SimplesDetailedViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SimplesDetailedViewController"];
        
        UINavigationController *naigationCOntroller = [[UINavigationController alloc]initWithRootViewController:vc];
        
        
        [self presentViewController:naigationCOntroller animated:NO completion:nil];
        
        
        //[self.navigationController pushViewController:vc animated:YES];
        
        
        
        
        

        
    }
    
        NSLog(@"the clicked string %@",self.appController.clickedString);
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView
layout:(UICollectionViewLayout *)collectionViewLayout
sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // Adjust cell size for orientation
   
    return CGSizeMake(93.f, 100.f);
}









- (NSString *)curentDateStringFromDate:(NSDate *)dateTimeInLine withFormat:(NSString *)dateFormat {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:dateFormat];
    
    NSString *convertedString = [formatter stringFromDate:dateTimeInLine];
    
    return convertedString;
}





- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(10, 10, 10, 10);
}
@end
