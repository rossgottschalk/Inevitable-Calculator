//
//  CalculatorViewController.m
//  InevitableCalculator
//
//  Created by Ross Gottschalk on 7/21/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@property (weak, nonatomic) IBOutlet UILabel *viewerLabel;

@end

@implementation CalculatorViewController
{
}

#pragma mark - Action Handlers
- (IBAction)clearTapped:(UIButton *)sender
{
    self.viewerLabel.text = @"";
}
- (IBAction)divideTapped:(UIButton *)sender
{
    operation = divide;
    storage = self.viewerLabel.text;
    self.viewerLabel.text = @"";
}
- (IBAction)multiplyTapped:(UIButton *)sender
{
    operation = multiply;
    storage = self.viewerLabel.text;
    self.viewerLabel.text = @"";
}
- (IBAction)subtractTapped:(UIButton *)sender
{
    operation = subtract;
    storage = self.viewerLabel.text;
    self.viewerLabel.text = @"";
}
- (IBAction)addTapped:(UIButton *)sender
{
    operation = add;
    storage = self.viewerLabel.text;
    self.viewerLabel.text = @"";
}

- (IBAction)equalsTapped:(UIButton *)sender
{
    NSString *secondNumber = self.viewerLabel.text;
    switch (operation)
    {
        case divide:
            self.viewerLabel.text = [NSString stringWithFormat:@"%f", [storage doubleValue] / [secondNumber doubleValue]];
            break;
        case multiply:
            self.viewerLabel.text = [NSString stringWithFormat:@"%f", [storage doubleValue] * [secondNumber doubleValue]];
            break;
        case subtract:
            self.viewerLabel.text = [NSString stringWithFormat:@"%f", [storage doubleValue] - [secondNumber doubleValue]];
            break;
        case add:
            self.viewerLabel.text = [NSString stringWithFormat:@"%f", [storage doubleValue] + [secondNumber doubleValue]];
            break;
            
    }
    
}
- (IBAction)decimalTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@.", self.viewerLabel.text];
}
- (IBAction)zeroTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@0", self.viewerLabel.text];
}
- (IBAction)oneTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@1", self.viewerLabel.text];
}
- (IBAction)twoTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@2", self.viewerLabel.text];
    
}
- (IBAction)threeTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@3", self.viewerLabel.text];
    
}
- (IBAction)fourTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@4", self.viewerLabel.text];
    
}
- (IBAction)fiveTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@5", self.viewerLabel.text];
    
}
- (IBAction)sixTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@6", self.viewerLabel.text];
    
}
- (IBAction)sevenTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@7", self.viewerLabel.text];
    
}
- (IBAction)eightTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@8", self.viewerLabel.text];
    
}
- (IBAction)nineTapped:(UIButton *)sender
{
    self.viewerLabel.text=[NSString stringWithFormat:@"%@9", self.viewerLabel.text];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.viewerLabel.text = @"";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
