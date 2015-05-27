//
//  Fibonacci.h
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fibonacci : NSObject{
    //"model" class for the shared fibonacci dictionary
    //it is implemented using an array, the index of the array
    // is n and the value stored is f(n). 
    NSMutableArray *fibonacciValues;
}
@property (nonatomic, retain) NSMutableArray *fibonacciValues;
+(id)sharedFibonacci;
@end
