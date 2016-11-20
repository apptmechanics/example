//
//  AppController.m
//  SidebarDemo
//
//  Created by sushma on 14/08/2016.
//  Copyright © 2016 Appcoda. All rights reserved.
//

#import "AppController.h"

@implementation AppController


+ (id)sharedManager {
    static AppController *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}


- (id)init {
    if (self = [super init]) {
        
        self.isSimples = NO;
        self.isCompuestos = NO;
        self.isParablas = NO;
        
    }
    return self;
}




@end
