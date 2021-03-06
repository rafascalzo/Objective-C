//
//  AppDelegate.m
//  Initializers
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "AppDelegate.h"
#import "DateCalculator.h"
#import "TemperatureConverter.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    DateCalculator * calc = [[DateCalculator alloc] initWithHisAge:30 hisName:@"Rafael Scalzo"];
    calc.hisAge = 30;
    calc.hisName = @"Rafael Scalzo";
    
    BOOL shouldDate = [calc shouldHeDateIfHerAgeIs:24];
    
    if (shouldDate) {
        NSLog(@"%@, OK to date, you old man!", calc.hisName);
    } else {
        NSLog(@"%@, you shouldn`t date, you old man!", calc.hisName);
    }
    
    
    TemperatureConverter * converter = [[TemperatureConverter alloc] initWithLocation: @"London"];
    float temperature = [converter getTemperature];
    NSLog(@"%@: Temperature now is %.f degrees", converter.location,temperature);
    
    TemperatureConverter * newConverter = [[TemperatureConverter alloc] initWithLocation:@"Russia"];
    NSLog(@"%@: Temperature now is %.f degrees",newConverter.location,[newConverter getTemperature]);
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
