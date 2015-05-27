//
//  Fibonacci.m
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci
@synthesize fibonacciValues;
+(id)sharedFibonacci {
    static Fibonacci *sharedFibonacci = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFibonacci = [[self alloc] init];
    });
    return sharedFibonacci;
}

- (id)init {
    if (self = [super init]) {
        fibonacciValues = [[NSMutableArray alloc] init];
        [self createFibonacciDictionary];
    }
    return self;
}
-(NSString *)get:(NSUInteger)n{
    return [fibonacciValues objectAtIndex:n];
}
-(void)createFibonacciDictionary{
    NSString *tempString;
    
    unsigned long long int fir=1,sec=1,next;
    tempString = [NSString stringWithFormat: @"%llu", fir];
    [fibonacciValues addObject:tempString];
    tempString = [NSString stringWithFormat: @"%llu", sec];
    [fibonacciValues addObject:tempString];
    
    while(YES){
        if(ULLONG_MAX-fir<sec){
            break;
        } else{
            next=fir+sec;
        }
        tempString = [NSString stringWithFormat: @"%llu", next];
        [fibonacciValues addObject:tempString];
        fir=sec;
        sec=next;
    }
}
@end
