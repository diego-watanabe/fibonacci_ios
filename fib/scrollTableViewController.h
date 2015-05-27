//
//  scrollTableViewController.h
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Fibonacci.h"

@interface scrollTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>{
    Fibonacci *sharedFibonacci;
    NSInteger index;
}
@property (strong) NSMutableArray *tableData;
@end
