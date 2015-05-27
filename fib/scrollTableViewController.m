//
//  scrollTableViewController.m
//  fib
//
//  Created by doom.engine on 5/27/15.
//  Copyright (c) 2015 diegowatanabe. All rights reserved.
//

#import "scrollTableViewController.h"

@interface scrollTableViewController ()

@end

@implementation scrollTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initialize shared fibonacci values
    sharedFibonacci = [Fibonacci sharedFibonacci];
    self.tableData = sharedFibonacci.fibonacciValues;
    //start index at 0 for looping purposes
    index = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [self.tableData objectAtIndex:indexPath.row];
    NSLog(@"%i", sharedFibonacci.fibonacciValues.count);
    return cell;
}
//to loop the array
- (void)scrollViewDidScroll:(UIScrollView *)scrollView_ {
    CGFloat actualPosition = scrollView_.contentOffset.y;
    CGFloat contentHeight = scrollView_.contentSize.height - (self.tableView.frame.size.height);
    if (actualPosition >= contentHeight) {
        //not the best solution but i couldn't quickly figure out an elegant solution for this.
        [self.tableData addObject:[self.tableData objectAtIndex:index++]];
        [self.tableView reloadData];
    }
}
@end
