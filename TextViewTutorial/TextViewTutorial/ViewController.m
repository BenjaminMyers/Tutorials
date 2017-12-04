//
//  ViewController.m
//  TextViewTutorial
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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setText:(id)sender {
    
    self.label.text = @"Hello";
    self.textView.text = self.textField.text;
    
    [self resignFirstResponder];
    
}

-(BOOL)textView:(UITableView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(nonnull NSString *)text {
    if ([text rangeOfCharacterFromSet:[NSCharacterSet newlineCharacterSet]].location == NSNotFound){
        return YES;
    }
    [textView resignFirstResponder];
    return NO;
}

@end
