//
//  CalculatorViewController.h
//  InevitableCalculator
//
//  Created by Ross Gottschalk on 7/21/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {divide, multiply, subtract, add} CalculatorOperation;

@interface CalculatorViewController : UIViewController
{
    NSString *storage;
    CalculatorOperation operation;
}
@end
