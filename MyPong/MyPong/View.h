//
//  View.h
//  MyPong
//
//  Created by Mike Smith on 3/31/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <AudioToolbox/AudioToolbox.h>	//needed for SystemSoundID

@interface View: UIView {
	UIView *paddle;
	UIView *ball;
	CGFloat dx, dy;	//direction and speed of ball's motion
    SystemSoundID sid;
}

- (void) move: (CADisplayLink *) displayLink;

@end