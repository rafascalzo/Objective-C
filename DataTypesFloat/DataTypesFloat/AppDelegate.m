//
//  AppDelegate.m
//  DataTypesFloat
//
//  Created by rafaeldelegate on 11/12/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    float f = M_PI;
    double d = M_PI;
    CGFloat cgf = M_PI;
    
    NSLog(@"float: %0.12f (%lu bytes)", f, sizeof(f));
    NSLog(@"double: %0.12f (%lu bytes)", d, sizeof(d));
    NSLog(@"CGFloat: %0.12f (%lu bytes)", cgf, sizeof(cgf));
    
    NSLog(@"Error %0.12f", ABS(f - d));
    
    float oneThirdWrong = 1/3;
    NSLog(@"One third wrong: %f", oneThirdWrong);
    
    float oneThirdRight = 1.0/3.0;
    NSLog(@"One third right: %f", oneThirdRight);
    
   // float tollerance = FLT_EPSILON;
    
   // float initial = 0.1;
    float initial = 1000000;
//    f = initial / 3;
//    f += initial / 3;
//    f += initial / 3;
    
    int iterations = 1327;
    
    float step = initial / iterations;
    f = 0;
    for (int i = 0; i < iterations; ++i) {
        f += step;
    }
    //float tollerance = iterations * FLT_EPSILON;
    float tollerance = iterations * FLT_EPSILON * ABS(f+initial);
    NSLog(@"f: %.12f", f);
    NSLog(@"initial: %.12f", initial);
    NSLog(@"Error: %.12f", ABS(f - initial));
    NSLog(@"Tollerance %.12f", tollerance);
    
    if (ABS(f-initial) < tollerance) {
        NSLog(@"Match!");
    } else {
        NSLog(@"Not match =(");
    }
    
    
    NSLog(@"CHALLENGE!!     !!!");
    
    float account1 = 100.00;
    float account2 = 0.00;
    float transferAmount = 0.10;
    
    for (int i = 0; i < 30; ++i) {
        account1 -= transferAmount;
        account2 += transferAmount;
    }
    
    NSLog(@"Account 1: %.12f", account1);
    NSLog(@"Account 2: %.12f", account2);
    NSLog(@"Sum: %.12f", account1 + account2);
    /*
    if (f == initial) {
        NSLog(@"Match!");
    } else {
        NSLog(@"Not match =(");
    }*/
    
    /*
    f = initial / 3.0;
    f += initial / 3.0;
    f += initial / 3.0;
    
    if (f == initial) {
        NSLog(@"Match!");
    } else {
        NSLog(@"Not match =(");
    }*/
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
