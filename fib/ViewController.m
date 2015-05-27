//
//  ViewController.m
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    sharedFibonacci = [Fibonacci sharedFibonacci];
    n = 0;
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}
-(void)dismissKeyboard {
    [_intFieldN resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)print{
    //fibn = [self fibonacci:n];
    if(n<sharedFibonacci.fibonacciValues.count){
       _outPutLabel.text = [NSString stringWithFormat:@"fib(%i)=%@", n, [sharedFibonacci.fibonacciValues objectAtIndex:n]];
    }
    else{
        _outPutLabel.text = [NSString stringWithFormat:@"fib(%i) > maximum unsigned long long", n];
    }
    _outPutLabel.text = [NSString stringWithFormat:@"fib(%i) = %@", n%sharedFibonacci.fibonacciValues.count, [sharedFibonacci.fibonacciValues objectAtIndex:n%sharedFibonacci.fibonacciValues.count]];
}
- (IBAction)calculateTouchUpInside:(id)sender {
    n = _intFieldN.text.intValue;
    [self print];
}

- (IBAction)nextTouchUpInside:(id)sender {
    n++;
    [self print];
}

- (IBAction)previousTouchUpInside:(id)sender {
    n--;
    [self print];
}
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

@end
