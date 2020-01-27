//
//  Freckles.m
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import "Freckles.h"

@implementation Freckles

-(void)hasToGoBathroom {
    [_delegate frecklesDidSmackLips:self];
}

-(void)isHungry {
    [_delegate frecklesDidLookHopeful:self];
}

@end
