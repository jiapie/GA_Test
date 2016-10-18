//
//  AppDelegate.h
//  GA_Test
//
//  Created by LeeChia-Pei on 2016/10/18.
//  Copyright © 2016年 LeeChia-Pei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "common.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong) NSPersistentContainer *persistentContainer;
- (void)saveContext;

//GA
@property (strong, nonatomic) id<GAITracker> tracker;
@end
