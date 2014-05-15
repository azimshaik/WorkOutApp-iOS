//
//  ViewController.h
//  workout
//
//  Created by is-Lib on 5/5/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
