//
//  FoodTableViewController.m
//  TestGoogleAnalytics
//
//  Created by Jennifer Bieberstein on 23/07/2014.
//  Copyright (c) 2014 Jennifer Bieberstein. All rights reserved.
//

#import "FoodTableViewController.h"
#import "FoodTableViewCell.h"


@interface FoodTableViewController ()

@end

@implementation FoodTableViewController

@synthesize foodList = _foodList;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    // data source
    self.foodList = @[@"100g Pears", @"3 big Potatoes", @"Some Oats"];

}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.screenName = @"Food Screen";
}


- (IBAction)trackIt:(id)sender {
    NSIndexPath *currentRow = [self.tableView indexPathForSelectedRow];
    NSString *currentFood = [self.foodList objectAtIndex:[currentRow row]];
    
    id<GAITracker> tracker = [[GAI sharedInstance] defaultTracker];
    
     NSLog(@"Track %@ with tracker %@", currentFood, tracker);
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.foodList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellIdentifier = @"FoodCell";

    FoodTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier
                                                            forIndexPath:indexPath];
    
    if (cell == nil) {
        cell = [[FoodTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                        reuseIdentifier:cellIdentifier];
    }
    cell.title.text = [self.foodList objectAtIndex:[indexPath row]];
    
    return cell;
}

@end


