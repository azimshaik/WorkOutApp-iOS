//
//  MediaViewController.h
//  workout
//
//  Created by Azim Shaik on 5/8/14.
//  Copyright (c) 2014 sandeepmalladi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface MediaViewController : UIViewController
{
//    AVAudioPlayer *audioPlayer;
//    MPMoviePlayerViewController *moviePlayer;
}
@property (strong, nonatomic) MPMoviePlayerController *moviePlayer;
- (IBAction)playVideo:(id)sender;
@end
