//
//  ViewController.m
//  ElseProject
//
//  Created by Ben Myers on 12/4/17.
//  Copyright © 2017 Ben Myers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BOOL state = true;
    if (state == true) {
        self.label1.text = @"Allow access";
    } else {
        self.label1.text = @"Deny access";
    }
    
    NSString *name = @"Aaron";
    
    if([name isEqualToString:@"Aaron"]) {
        self.label2.text = @"Nice name";
    } else if ([name isEqualToString:@"Steve"]) {
        self.label2.text = @"Nice name";
    } else {
        self.label2.text = @"Nice name";
    }
    
    int number = 999;
    if (number > 1500) {
        self.label3.text = @"Unlock level 2";
    } else {
        self.label3.text = @"Try again";
    }
    
    NSString *color = @"Red";
    if ([color isEqualToString:@"Red"] || [color isEqualToString:@"Green"]) {
        self.label4.text = @"Nice color";
    }
    
    NSString *forename = @"Aaron";
    NSString *surname = @"Caines";
    
    if ([forename isEqualToString:@"Aaron"] && [surname isEqualToString:@"Caines"]) {
        self.label5.text = @"Grant access";
    } else if ([forename isEqualToString:@"Aaron"]) {
        self.label5.text = @"surname incorrect";
    } else if ([surname isEqualToString:@"Caines"]) {
        self.label5.text = @"forename incorrect";
    } else {
        self.label5.text = @"forename and surname incorrect";
    }
    
    // While loops stuff
    
    int val = 0;
    
    while (val < 5) {
        val++;
        NSLog(@"%i", val);
    }
    
    int number1 = 1000;
    int number2 = 100;
    
    while (number1 > 0) {
        number1 -= number2;
        NSLog(@"%i", number1);
    }
    
    // For loops
    int x;
    for (x = 10; x > 1; x -= 1) {
        NSLog(@"%i", x);
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
