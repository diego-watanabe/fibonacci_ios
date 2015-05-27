//
//  ViewController.h
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fibonacci.h"

@interface ViewController : UIViewController {
    // Using the unsigned integer class we can display integers requiring up to 64 bits rather than 32. 
    NSUInteger n;
    unsigned long long int fibn;
    Fibonacci *sharedFibonacci;
}

@property (nonatomic, strong) NSMutableDictionary *fibonacciDictionary;
@property (weak, nonatomic) IBOutlet UITextField *intFieldN;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UILabel *outPutLabel;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;
@property (weak, nonatomic) IBOutlet UIButton *previousButton;
- (IBAction)calculateTouchUpInside:(id)sender;
- (IBAction)nextTouchUpInside:(id)sender;
- (IBAction)previousTouchUpInside:(id)sender;

@end

