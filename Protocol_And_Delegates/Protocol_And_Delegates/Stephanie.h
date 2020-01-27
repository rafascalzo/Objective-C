//
//  Stephanie.h
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Freckles.h"

NS_ASSUME_NONNULL_BEGIN

@class Stephanie;

@protocol StephanieDelegate <NSObject>
@required
-(void)stephanieDidLookSad:(Stephanie *)stephanie;
@end

@interface Stephanie : NSObject <FrecklesDelegate>

@property (nonatomic, strong) id<StephanieDelegate> delegate;

- (void)frecklesDidSmackLips:(Freckles *)freckles;
- (void)frecklesDidLookHopeful:(Freckles *)freckles;
- (void)isSad;
@end

NS_ASSUME_NONNULL_END
