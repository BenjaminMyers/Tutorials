//
//  ViewController.h
//  TextViewTutorial
//
//  Created by Ben Myers on 12/4/17.
//  Copyright © 2017 Ben Myers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate> {
    
}
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)setText:(id)sender;
@end

