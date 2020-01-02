//
//  AppDelegate.m
//  Properties
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "AppDelegate.h"
#import "DateCalculator.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DateCalculator *calculator = [[DateCalculator alloc] init];
    [calculator setHisAge:30];
    [calculator setHisName:@"Rafael"];
    //NSString *hisName = [calculator hisName];
    BOOL shouldDate = [calculator shouldDateIfHerAgeIs:23];
    
    if (shouldDate) {
        NSLog(@"It`s ok to date %@, you old man!", [calculator hisName]);
        //can use with dot notation
        //NSLog(@"It`s ok to date %@, you old man!", calculator.hisName);
    } else {
        NSLog(@"%@, you shouldn`t date, you old man!", [calculator hisName]);
    }
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
