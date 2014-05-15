//
//  animationViewController.m
//  workout
//
//  Created by Azim Shaik on 5/9/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "animationViewController.h"

@interface animationViewController ()

@end

@implementation animationViewController
@synthesize predictionArray,predictionLabel,imageView;

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
    self.predictionArray = [[NSArray alloc] initWithObjects:@"Look at the Horse",@"Does it seem Tired?",@"Rather, the person on it does!",@"So, never try to escape", @"Motivate yourself", @"GO WORKOUT !!!", nil]; ///You can add as many strings you want.
    
    self.imageView.animationImages = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"1.jpg"], [UIImage imageNamed:@"2"],[UIImage imageNamed:@"3"], [UIImage imageNamed:@"4"],[UIImage imageNamed:@"5"],[UIImage imageNamed:@"6"],[UIImage imageNamed:@"7"],[UIImage imageNamed:@"8"],[UIImage imageNamed:@"9"],[UIImage imageNamed:@"10"],[UIImage imageNamed:@"11"],[UIImage imageNamed:@"12"],[UIImage imageNamed:@"13"],[UIImage imageNamed:@"14"],[UIImage imageNamed:@"15"],[UIImage imageNamed:@"16"], [UIImage imageNamed:@"17"],[UIImage imageNamed:@"18"],[UIImage imageNamed:@"19"],[UIImage imageNamed:@"20"],[UIImage imageNamed:@"21"],[UIImage imageNamed:@"22"],[UIImage imageNamed:@"23"],[UIImage imageNamed:@"24"],[UIImage imageNamed:@"25"],[UIImage imageNamed:@"26"],[UIImage imageNamed:@"27"],[UIImage imageNamed:@"28"],[UIImage imageNamed:@"29"],[UIImage imageNamed:@"30"],nil];
    
    self.imageView.animationDuration = 1.0; //Yon can customise it how ever you want.
    self.imageView.animationRepeatCount = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makePrediciton
{
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    
    [UIView animateWithDuration:2.5 animations:^{self.predictionLabel.alpha = 1;}];
    [self.imageView startAnimating];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSUInteger index = arc4random_uniform(self.predictionArray.count);
    self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self makePrediciton];
}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"Motion Began");
    
    self.predictionLabel.text = nil;
    self.predictionLabel.alpha = 0.0;
    
}

- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"Motion Cancelled");
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    if (motion == UIEventSubtypeMotionShake) {
        NSLog(@"Motion Ended");
        
        [self makePrediciton];
    }
    
    [UIView animateWithDuration:3.5 animations:^{self.predictionLabel.alpha = 1;}];
    
}

- (BOOL) canBecomeFirstResponder
{
    return YES;
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
