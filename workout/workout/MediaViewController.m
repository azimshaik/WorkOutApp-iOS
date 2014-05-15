//
//  MediaViewController.m
//  workout
//
//  Created by Azim Shaik on 5/8/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "MediaViewController.h"

@interface MediaViewController ()

@end

@implementation MediaViewController

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

- (IBAction)playVideo:(id)sender {
//    NSString *path = [[NSBundle mainBundle]pathForResource:
//                      @"test" ofType:@"mp4"];
//    moviePlayer = [[MPMoviePlayerViewController
//                    alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
//    [self presentViewController:moviePlayer animated:NO completion:nil];
//    // [self presentModalViewController:moviePlayer animated:NO];
    NSURL *url = [NSURL URLWithString:
                  @"http://azim.ashaiks.com/springs.mov"];
    
    _moviePlayer =  [[MPMoviePlayerController alloc]
                     initWithContentURL:url];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(moviePlayBackDidFinish:)
                                                 name:MPMoviePlayerPlaybackDidFinishNotification
                                               object:_moviePlayer];
    
    _moviePlayer.controlStyle = MPMovieControlStyleDefault;
    _moviePlayer.shouldAutoplay = YES;
    [self.view addSubview:_moviePlayer.view];
    [_moviePlayer setFullscreen:YES animated:YES];
}
@end
