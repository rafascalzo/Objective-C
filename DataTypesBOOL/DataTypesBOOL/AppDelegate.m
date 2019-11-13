//
//  AppDelegate.m
//  DataTypesBOOL
//
//  Created by rafaeldelegate on 11/12/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

#import "AppDelegate.h"
static BOOL different(int thing1, int thing2) {
    return thing1 - thing2;
}
@interface AppDelegate ()

@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    bool cBool = true;
    BOOL objcBool = YES;
    
    NSLog(@"cBool: %d objcBool: %d", cBool, objcBool);
    
    cBool = false;
    objcBool = NO;
    
    NSLog(@"cBool: %d objcBool: %d", cBool, objcBool);
    
    cBool = 25;
    objcBool = 25;
    
    NSLog(@"cBool: %d objcBool: %d",cBool, objcBool);
    
    if (cBool) {
        NSLog(@"cBool is true");
    }
    if (objcBool) {
        NSLog(@"objcBool is true");
    }
    
    if (different(1, 2)) {
        NSLog(@"Different!");
    } else {
        NSLog(@"Not different!");
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
