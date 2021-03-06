//
//  AppDelegate.m
//  TemperatureConverter
//
//  Created by Rafael Scalzo on 24/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.

#import "AppDelegate.h"
#import "TemperatureConverter.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    TemperatureConverter * converter = [[TemperatureConverter alloc] init];
    
    [converter setLocation:@"London"];
    
    float temperatureInFahrenheit = [converter convertCelsiusToFahrenheitWithA:26.67];
    float temperatureInCelsius = [converter convertFahrenheitToCelsiusWithA:80];
    float temperatureInKelvin = [converter convertCelsiusToKelvinWithA:26.67];
    
    NSLog(@"%@ temperature in Fahrenheit %.2f",[converter location],temperatureInFahrenheit);
    NSLog(@"%@ temperature in Celsius %.2f",[converter location],temperatureInCelsius);
    NSLog(@"%@ temperature in Kelvin %.2f",[converter location], temperatureInKelvin);
    
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
