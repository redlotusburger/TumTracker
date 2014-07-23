//
//  FoodTableViewController.h
//  TestGoogleAnalytics
//
//  Created by Jennifer Bieberstein on 23/07/2014.
//  Copyright (c) 2014 Jennifer Bieberstein. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FoodTableViewCell.h"


@interface FoodTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *foodList;

- (IBAction)trackIt:(id)sender;
@end
