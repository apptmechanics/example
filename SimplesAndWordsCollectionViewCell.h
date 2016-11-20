//
//  SimplesAndWordsCollectionViewCell.h
//  SidebarDemo
//
//  Created by sushma on 13/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimplesAndWordsCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *labelSet;
@property (weak, nonatomic) IBOutlet UIImageView *bookMark;

@property (weak, nonatomic) IBOutlet UILabel *dateLabel;

@property (weak, nonatomic) IBOutlet UILabel *lastSeenLabel;

@end
