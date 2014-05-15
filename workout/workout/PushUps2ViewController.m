//
//  PushUps2ViewController.m
//  workout
//
//  Created by Azim Shaik on 5/8/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "PushUps2ViewController.h"

@interface PushUps2ViewController ()

@end

@implementation PushUps2ViewController

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

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSString *getValueA = self.myLabelA.text;
    int value =[ getValueA integerValue];
    value = value-1;
    if(value >0){
        self.myLabelA.text =[NSString stringWithFormat:@"%d",value];
        }
    else if (value == 0)
    {
        [[self myLabelA] setFont:[UIFont fontWithName:@"System" size:10]];
        self.myLabelA.text = @"Training Complete";
        value =0;
        //exit(0);
    }
    else if(value < 0){
        [[self myLabelA] setFont:[UIFont fontWithName:@"System" size:10]];
        self.myLabelA.text = @"Go to Next Level";
        
        //programatically creating a button
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 300, 100, 50);
        [btn setTitle:@"Next Level" forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor yellowColor]];
        [self.view addSubview:btn];
}
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
