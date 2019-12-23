//
//  AppDelegate.m
//  DataTypes_Enums_and_Bitmasks
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

typedef NS_ENUM(long long, VideGameType) {
    VideGameTypeRPG,
    VideGameTypeStrategy,
    VideGameTypeAction,
    VideGameTypeFPS = 12
    //VideGameTypeFPS = 7, you can override default values 0,1,2,3..
};

typedef NS_OPTIONS(NSInteger, EntityCategory) {
    EntityCategoryPlayer = 1 << 0,
    EntityCategoryEnemy = 1 << 1,
    EntityCategoryAlien = 1 << 2
};

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //Objective-C does support enum type from the C programming C99 standard
    //... but now there`s a better way
    
    /*
     typedef NS_ENUM(NSInteger, VideGameType) {
       VideoGameRPG,
         VideGameStrategy,
         VideoGameAction,
         VideGameFPS
     };
     */
    //Benefits: type safety, hints to compiler for switch statements
    
    
    VideGameType type = VideGameTypeFPS;
    NSLog(@"Size of: %lu Value: %lld", sizeof(type), type);
    
    switch (type) {
        case VideGameTypeRPG:
            NSLog(@"RPG");
            break;
        default:
            NSLog(@"Default");
            break;
    }
    
    //Bitmasks
    //Treat a type as series of on/off flags
    //Efficiently store a large series of booleans
    
    //Can still do things the old way
    //static const NSInteger EntityCategoryPlayer = 1 << 0;
    //static const NSInteger EntityCategoryEnemy = 1 << 1;
    //static const NSInteger EntityCategoryAlien = 1 << 2;
    
    //But there`s a better way:
    
    /*
    typedef NS_OPTIONS(NSInteger, EntityCategory) {
        EntityCategoryPlayer = 1 << 0,
        EntityCategoryAsteroid = 1 << 1,
        EntityCategoryAlien = 1 << 2
    };
     */
    // Advantages: readability, enforcing same type
    
    EntityCategory category = EntityCategoryEnemy | EntityCategoryAlien;
    
    NSLog(@"%x", (int)EntityCategoryPlayer);
    NSLog(@"%x", (int)EntityCategoryEnemy);
    NSLog(@"%x", (int)EntityCategoryAlien);
    NSLog(@"%x", (int)category);
    
    if (category & EntityCategoryPlayer) {
        NSLog(@"Player!");
    }
    
    if (category & EntityCategoryEnemy) {
        NSLog(@"Enemy!");
    }
    
    if (category & EntityCategoryAlien) {
        NSLog(@"Alien!");
    }
    
    
    //Challenge
    // Replace VideoGameType with old-style way;
    
    enum tag_VideoGame {
       VideoGameRPG,
        VideoGameStrategy,
        VideoGameAction,
        VideoGameFPS = 12
    };
    typedef int VideoGame;
    
    NSLog(@"%d",VideoGameFPS);
    
    static const int GameRPG = 0;
    static const int GameStrategy = 1;
    static const int GameAction = 2;
    static const int GameFPS = 3;
    
    NSLog(@"%x",(int)GameRPG);
    NSLog(@"%x",(int)GameStrategy);
    NSLog(@"%x",(int)GameAction);
    NSLog(@"%x",(int)GameFPS);
    
    //Delete default case statement - what happens and why?
    //switch statements needs to cover all cases, int has so many values so we need to add default case to cover any statement that we have not mentioned
    
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
