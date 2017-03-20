//
//  AppDelegate.h
//  FinalProject
//
//  Created by remotetiger_user on 3/16/17.
//  Copyright © 2017 Mahendar. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

