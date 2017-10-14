//
//  ViewController.m
//  Bill Splitter
//
//  Created by Carlo Namoca on 2017-10-14.
//  Copyright © 2017 Carlo Namoca. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UISlider *sliderValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)calculateSplitAmount:(UIButton *)sender {
    [self.textLabel.text intValue];
    float textLabelValue = [self.inputTextLabel.text floatValue];
    float x = textLabelValue / self.sliderValue.value;
    self.textLabel.text = [NSString stringWithFormat:@"$%.2f", x];
}

- (void)setupTextField
{
    self.inputTextLabel.keyboardType = UIKeyboardTypeNumberPad;
    self.inputTextLabel.clearButtonMode = UITextFieldViewModeUnlessEditing;
}

- (IBAction)splitSlider:(UISlider *)sender {
    int x = sender.value;
    sender.value = x;
    NSLog(@"%.0f", sender.value);
    self.sliderLabel.text = [NSString stringWithFormat:@"%.0f PEOPLE", sender.value];
}

@end
