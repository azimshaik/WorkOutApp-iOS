//
//  AboutViewController.h
//  workout
//
//  Created by is-Lib on 5/6/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AboutViewController : UIViewController

@property(nonatomic, strong) IBOutlet UIWebView *webView;
@property(nonatomic,retain) NSString *urladdress;

@end
