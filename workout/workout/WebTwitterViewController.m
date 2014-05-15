//
//  WebTwitterViewController.m
//  workout
//
//  Created by Azim Shaik on 5/9/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "WebTwitterViewController.h"

@interface WebTwitterViewController ()

@end

@implementation WebTwitterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    NSString *fbUrl = @"https://twitter.com/WorkoutUpdates";
    NSURL *ur = [NSURL URLWithString:fbUrl];
    NSURLRequest *reqObj = [NSURLRequest requestWithURL:ur];
    [_twitterView loadRequest:reqObj];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
