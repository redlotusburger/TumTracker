//
//  FoodTableViewController.h
//  TestGoogleAnalytics
//
//  Created by Jennifer Bieberstein on 23/07/2014.
//  Copyright (c) 2014 Jennifer Bieberstein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodTableViewCell.h"
#import "GAI.h"
#import "GAIDictionaryBuilder.h"

@interface FoodTableViewController : GAITrackedViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSArray *foodList;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)trackIt:(id)sender;



@end
