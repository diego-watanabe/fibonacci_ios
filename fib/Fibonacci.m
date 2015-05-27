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

-(void)createFibonacciDictionary{
    NSString *tempString;
    
    unsigned long long int first=1,second=1,next;
    tempString = [NSString stringWithFormat: @"%llu", first];
    [fibonacciValues addObject:tempString];
    tempString = [NSString stringWithFormat: @"%llu", second];
    [fibonacciValues addObject:tempString];
    
    while(YES){
        if(ULLONG_MAX-first<second){
            break;
        } else{
            next=first+second;
        }
        tempString = [NSString stringWithFormat: @"%llu", next];
        [fibonacciValues addObject:tempString];
        first=second;
        second=next;
    }
}
@end
