//
//  SidebarViewController.m
//  SidebarDemo
//
//  Created by Simon on 29/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "SidebarViewController.h"
#import "SWRevealViewController.h"
#import "AppController.h"
#import "Parablas.h"
@interface SidebarViewController ()
@property(nonatomic,strong)AppController *appController;
@property (nonatomic, strong) NSArray *menuItems;
@end

@implementation SidebarViewController{
    NSArray *_menuItems;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    self.appController = [AppController sharedManager];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(28,7,30,30)];
    imageView.image = [UIImage imageNamed:@"logo"];
    [self.navigationController.navigationBar addSubview:imageView];
    
    [super viewDidLoad];
    self.menuItems = @[ @"home", @"letters", @"vowels", @"sonidos", @"numbers",@"words",@"complete"];



}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return _menuItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
     NSString *CellIdentifier = [_menuItems objectAtIndex:indexPath.row];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if(indexPath.row == 1){
        
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setBool:YES forKey:@"letters"];
        [userDefaults setBool:NO forKey:@"vowels"];
        [userDefaults synchronize];
        
        [self performSegueWithIdentifier:@"lettersVowelsSegue" sender:self];
        
        
    }else if(indexPath.row == 2){
        
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setBool:NO forKey:@"letters"];
        [userDefaults setBool:YES forKey:@"vowels"];
        [userDefaults synchronize];
        [self performSegueWithIdentifier:@"lettersVowelsSegue" sender:self];
        
    }else if(indexPath.row == 5){
    
    
        self.appController.isParablas = true;
        self.appController.isSimples = false;
        self.appController.isCompuestos = false;
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        
        [userDefaults setBool:NO forKey:@"letters"];
        [userDefaults setBool:NO forKey:@"vowels"];
        [userDefaults synchronize];
    [self performSegueWithIdentifier:@"wordsSegue" sender:self];
    }
    
    
}



- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"wordsSegue"]) {
        NSLog(@"the segue have been progressed");
     // Parablas *controller = (Parablas *)segue.destinationViewController;
        
    }
}
-(UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize {
    UIGraphicsBeginImageContext(newSize);
    [image drawInRect:CGRectMake(0, 0,newSize.width, newSize.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


@end
