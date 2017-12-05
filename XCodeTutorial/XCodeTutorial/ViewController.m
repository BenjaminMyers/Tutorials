//
//  ViewController.m
//  XCodeTutorial
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
    
    NSString *string1 = @"Hello";
    NSString *string2 = @"Aaron";
    
    self.label1.text = [NSString stringWithFormat:@"%@ %@", string1, string2];
    
    int int1 = 3;
    int int2 = 10;
    
    self.label2.text = [NSString stringWithFormat:@"%d", int1 + int2];
    
    double double1 = 100.247;
    double double2 = 324.546;
    
    self.label3.text = [NSString stringWithFormat:@"%.2f %.0f", double1, double2];
    
    BOOL bool1 = NO;
    BOOL bool2 = false;
    
    self.button.enabled = bool2;
    self.switches.on =  bool1;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
