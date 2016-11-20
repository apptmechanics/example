//
//  AppController.h
//  SidebarDemo
//
//  Created by sushma on 14/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject

@property(nonatomic)BOOL isSimples;
@property(nonatomic)BOOL isCompuestos;
@property(nonatomic)BOOL isParablas;


@property(nonatomic)BOOL isDetailedSounidos;
@property(nonatomic)BOOL isDetailedSilabas;
@property(nonatomic)BOOL isDetailedPalabras;

@property(strong,nonatomic) NSString* visitedLabel;

@property(nonatomic)NSUInteger arrayNumber
;
@property(nonatomic)BOOL didCollectionViewCliked;
@property(nonatomic,strong)NSString *detailedString;

@property(nonatomic,strong)NSString *clickedString;


@property(nonatomic,strong)NSURL *recordedUrl;
@property(nonatomic,strong)NSURL *recordedFraseUrl;
@property(nonatomic,strong)UIImage *profileImage;
@property(nonatomic,strong)NSString *profileName;



+ (id)sharedManager;

@end
