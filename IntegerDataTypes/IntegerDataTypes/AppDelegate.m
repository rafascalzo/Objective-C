//
//  AppDelegate.m
//  IntegerDataTypes
//
//  Created by Rafael Scalzo on 23/12/19.
//  Copyright © 2019 Rafael Scalzo. All rights reserved.
//

#import "AppDelegate.h"
#import <limits.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
     About Objective C (from Wikipedia)

     Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. It was the main programming language used by Apple for the OS X and iOS operating systems, and their respective application programming interfaces (APIs) Cocoa and Cocoa Touch prior to the introduction of Swift.

     The programming language Objective-C was originally developed in the early 1980s. It was selected as the main language used by NeXT for its NeXTSTEP operating system, from which OS X and iOS are derived.[3] Portable Objective-C programs that do not use the Cocoa or Cocoa Touch libraries, or those using parts that may be ported or reimplemented for other systems, can also be compiled for any system supported by GNU Compiler Collection (GCC) or Clang.

     Objective-C source code 'implementation' program files usually have .m filename extensions, while Objective-C 'header/interface' files have .h extensions, the same as C header files. Objective-C++ files are denoted with a .mm file extension.

     About Datatypes:

     In computer science and computer programming, a data type or simply type is a classification of data which tells the compiler or interpreter how the programmer intends to use the data. Most programming languages support various types of data, for example: real, integer or Boolean. A Data type provides a set of values from which an expression (i.e. variable, function ...) may take its values. The type defines the operations that can be done on the data, the meaning of the data, and the way values of that type can be stored.

     Data types are used within type systems, which offer various ways of defining, implementing and using them. Different type systems ensure varying degrees of type safety.

     Almost all programming languages explicitly include the notion of data type, though different languages may use different terminology. Common data types include:

     integers
     booleans
     characters
     floating-point numbers
     alphanumeric strings

     For example, in the Java programming language, the "int" type represents the set of 32-bit integers ranging in value from -2,147,483,648 to 2,147,483,647, as well as the operations that can be performed on integers, such as addition, subtraction, and multiplication. Colors, on the other hand, are represented by three bytes denoting the amounts each of red, green, and blue, and one string representing that color's name; allowable operations include addition and subtraction, but not multiplication.

     Most programming languages also allow the programmer to define additional data types, usually by combining multiple elements of other types and defining the valid operations of the new data type. For example, a programmer might create a new data type named "complex number" that would include real and imaginary parts. A data type also represents a constraint placed upon the interpretation of data in a type system, describing representation, interpretation and structure of values or objects stored in computer memory. The type system uses data type information to check correctness of computer programs that access or manipulate the data.
     */
    
    //Integer Data types (Arch dependent)
    //Type              32-Bit Size         64-Bit Size
    //char                  1                   1
    //short                 2                   2
    //int                   4                   4
    //long                  4                   8
    //long long             8                   8
    
    
    //Integer Data Types (Apple)
    //type              32-Bit Size         64-Bit Size
    //NSInteger             4                   8
    //NSUInteger            4                   8
    
    
    //Integer Data Types (Explicit)
    //type              32-Bit Size         64-Bit Size
    //int8_t                1                   1
    //int16_t               2                   2
    //int32_t               4                   4
    //int64_t               8                   8
    
    
    //Integer Data Type (Best Pratices)
    //NSInteger
    //-When interacting with Apple code
    //-Public class APIs to conforms with Apple standards
    //-When want native integer size on architecture
    
    //Arch dependent or explicit types (int or int32_t)
    //-Explicit when want  specific sized type (i.e. network programming) (send packs to machines with different architectures)
    //-Arch dependent when size not important (looping in arrays)
    //-When optimizing for portability (esp. c/c++ code)
    //-Avoid memory bload
    
    //FORMAT STRINGS
    // NSLog(@"[FORMAT STRING]", var1, var2, ..., varN);
    //int myInt = 34;
    //short myShort = 20;
    //NSLog(@"Values: %d %hd",myInt, myShort);
    
    
    //type                          format specifier
    //8-bit unsigned char                   %c
    //32-bit signed integer                 %d
    //32-bit unsigned integer               %u, %x, %X, %o, %O
    
    //type                                              modifier
    //following d, o, u, x, X applies to char               hh
    //following d, o, u, x, X applies to short              h
    //following d, o, u, x, X applies to long               l
    //following d, o, u, x, X applies to long long          ll
    
    //type              Format specifier                Notes
    //NSInteger             %ld or %lx                    Cast to long
    //NSUInteger            %lu or %lx                    Cast to unsigned long
    
    //NSInteger myInt = 34;
    //NSLog(@"Value: %ld", (long)myInt);
    
    int i = 1;
    unsigned int ui = 2;
    long l = 3;
    
    //
    //%d to %d requires #import <limits.h>
    NSLog(@"int: %d (%lu bytes) %d to %d", i, sizeof(i), (int)INT_MIN, (int)INT_MAX);
    NSLog(@"unsigned int: %u (%lu bytes) %u to %u", ui, sizeof(ui), 0, (unsigned int)UINT_MAX);
    NSLog(@"long: %ld (%lu bytes) %ld to %ld", l, sizeof(l), (long)LONG_MIN, (long)LONG_MAX);
    
    //Challenge: Playing with Type
    uint32_t u32 = 4;
    int16_t i16 = 5;
    NSInteger nsInt = 6;
    
    NSLog(@"uint32_t: %u (%lu bytes), %u to %u", u32, sizeof(u32), 0, (unsigned int) UINT32_MAX);
    NSLog(@"int16_t: %d (%lu bytes) %d to %d", i16, sizeof(i16),(int)INT16_MIN ,(int)INT16_MAX);
    NSLog(@"NSInteger: %ld (%lu bytes) %ld to %ld", (long) nsInt, sizeof(nsInt), (long)LONG_MIN, (long)LONG_MAX);
    
    //Why is this incorrect on 64-Bit Size architecture
    nsInt = 1000000000000000000;
    int myInt = (int)nsInt;
    NSLog(@"(%lu bytes) (%lu bytes)", sizeof(nsInt), sizeof(myInt));
    //reason is nsInt is bigger than maximum int size...
    NSLog(@"NSInteger: %ld",(long) nsInt);
    NSLog(@"myInt: %d", myInt);
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
