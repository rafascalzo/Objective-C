//
//  AppDelegate.h
//  Protocol_And_Delegates
//
//  Created by Rafael VSM on 26/01/20.
//  Copyright © 2020 Rafael VSM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>


@end

/*
 Someone defines an interface
 
 @protocol ProtocolName<ProtocolToExtend>
 @optional
 // Optional methods
 @requied
 // Required methods
 @end
 
 You mark your class as implementing the interface
 @interface ClassName: SuperClass <ProtocolName>
        OR
 @interface ClassName () <ProtocolName>
 
 
 You implement the methods on your class
 When refering to an object that implements a protocol, do this:
 id <ProtocolName> myVariable;
 */


