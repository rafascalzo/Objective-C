//
//  ViewController.m
//  Objective-C
//
//  Created by rafaeldelegate on 11/10/19.
//  Copyright © 2019 rafaeldelegate. All rights reserved.
//

#import "ViewController.h"

BOOL isEqualTo(int first, int second)
{
    if (first == second) {
        return (NO);
    }
    return (YES);
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL theyAreDifferent;
    theyAreDifferent = isEqualTo(5, 5);
    
    NSLog(@"are %d and %d different? %d",5,5,theyAreDifferent);
    
    theyAreDifferent = isEqualTo(12, 15);
    
    NSLog(@"are %d and %d different? %d",12, 15, theyAreDifferent);
    // Do any additional setup after loading the view.
}


@end
