//
//  AboutViewController.m
//  workout
//
//  Created by is-Lib on 5/6/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

@synthesize webView;
@synthesize urladdress;

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
    
  /*  NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webView loadRequest:request]; */
    
  /*  AboutViewController *abtview = [[AboutViewController alloc]init];
    
    abtview.urladdress = @"https://www.google.com";
    abtview.title = @"ContactInfo"; */
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
