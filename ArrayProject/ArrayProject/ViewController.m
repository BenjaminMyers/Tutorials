//
//  ViewController.m
//  ArrayProject
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
    
    NSArray *array = @[@"Apple", @"Banana", @"Orange"];
    self.label.text = array[2];
    NSMutableArray *array2 = [[NSMutableArray alloc] initWithObjects:@"Apple", @"Banana", @"Orange", nil];
    
    NSLog(@"%@", array2);
    [array2 addObject:@"Melon"];
    [array2 insertObject:@"Strawberry" atIndex: 0];
    self.label2.text = array2[3];
    NSLog(@"%@", array2);
    NSLog(@"%lu", array2.count);
    
    [array2 removeObjectAtIndex:1];
    NSLog(@"%@", array2);
    NSLog(@"%lu", array2.count);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
