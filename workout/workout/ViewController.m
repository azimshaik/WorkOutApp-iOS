//
//  ViewController.m
//  workout
//
//  Created by is-Lib on 5/5/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "AboutViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSArray *muscle;
    NSArray *thumbnails;
    NSArray *description;
}

@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    muscle =[NSArray arrayWithObjects:@"Biceps", @"chest", @"Legs", @"Back", @"Triceps", @"Abs", @"Shoulders", nil];
    
    
    description =[NSArray arrayWithObjects:@"Hanging from a bar with arms extended and palms facing away from the exerciser, the body is pulled up until the elbows are bent and the head is higher than the hands. The closer the hands, the more the emphasis on the biceps and elbow flexors.A variation is the chin-up, where the palms face towards the face, emphasizing the biceps.",
                  @"*In a prone position, the body is raised and lowered using the arms while the back remains straight and the toes remain on the ground. The exercise can be made more difficult by placing the legs at an incline. Thus, the upper body must support more weight. The exercise can be made even more difficult by performing it with a single arm. Notable variations include the Hindu pushup (dand), the divebomber pushup, and the diamond pushup",
                  @"*Standing up, the legs are bent at the knees and hips, lowering the torso between the legs. The torso leans forward to maintain balance. (Usually called a bodyweight squat to distinguish it from the use of weights.) The single leg squat, or pistol squat, can be used to make the exercise significantly harder as it requires one to have a great deal of balance, flexibility, and strength.",
                  @"*Either lying face down on a floor or lying on a support such as a bench with the upper body extended unsupported from the bench. The person drops down the upper body and then raises it up again to the point where the back is slightly arched back and then lowers again to repeat.",
                  @"*Hanging from a dip bar or other implement with the arms straight and the shoulders positioned above the hands, the body is lowered until the arms are bent at a 90 degrees angle.",
                  @"* Lying face up on the floor, the shoulders are curled towards the pelvis while the lower back remains flat against the floor. Focus is put on contracting the abdominal muscles.",
                  @"* From a standing position, the person drops to a squat with hands on floor (count 1), thrusts legs back to assume pushup position (count 2), returns to squat (count 3), and returns to standing position (count 4). The military 8-count version adds a pushup after count 2, and a jumping jack after count 4.", nil];
    
    
    thumbnails =[NSArray arrayWithObjects:@"Biceps1.jpg", @"Chest1.jpg", @"Legs1.jpg", @"Back1.jpg", @"Triceps1.jpg", @"Abs1.jpg", @"Shoulders1.jpg", nil];
    
   /* UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pin.png"]];
    bgImageView.frame = self.view.bounds;
    [self.view addSubview:bgImageView];
    [self.view sendSubviewToBack:bgImageView];*/
    
    //[self.view setBackgroundColor:[UIColor clearColor]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [muscle count];
    //[self.view setBackgroundColor:[UIColor colorWithWhite:0 alpha:0.5]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"MuscleCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
        
        
    }
    
    cell.textLabel.text = [muscle objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showMuscleDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *detViewController = segue.destinationViewController;
        detViewController.muscleName = [description objectAtIndex:indexPath.row];
    }
}

@end
