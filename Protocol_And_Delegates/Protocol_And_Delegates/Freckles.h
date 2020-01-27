//
//  Freckles.h
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Freckles;

@protocol FrecklesDelegate <NSObject>
@required
- (void)frecklesDidSmackLips:(Freckles *)freckles;
- (void)frecklesDidLookHopeful:(Freckles *)freckles;
@end

@interface Freckles : NSObject

@property (nonatomic, strong) id<FrecklesDelegate> delegate;

- (void)hasToGoBathroom;
- (void)isHungry;

@end

NS_ASSUME_NONNULL_END
