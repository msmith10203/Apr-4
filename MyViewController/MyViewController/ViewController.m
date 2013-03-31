//
//  ViewController.m
//  MyViewController
//
//  Created by Mike Smith on 3/30/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "ViewController.h"
#import "View.h"

@interface ViewController ()

@end

@implementation ViewController

/*

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

*/

- (void) loadView {
    CGRect frame=[UIScreen mainScreen].applicationFrame;
    self.view = [[View alloc] initWithFrame:frame controller: self];
    
}
 
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    device = [UIDevice currentDevice];
	NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
	//Send the setNeedsDisplay message to the view
	//when we get a OrientationDidChange notification from the device.
	[center addObserver: self.view
               selector: @selector(setNeedsDisplay)
                   name: UIDeviceOrientationDidChangeNotification
                 object: device
     ];
	[device beginGeneratingDeviceOrientationNotifications];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark Orientations

- (NSUInteger) supportedInterfaceOrientations {
//	return UIInterfaceOrientationMaskAll;

    NSUInteger r = UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown;
    
    return r;
    
	/*
     Or you could say
     return UIInterfaceOrientationMaskPortrait
     | UIInterfaceOrientationMaskLandscapeLeft
     | UIInterfaceOrientationMaskLandscapeRight
     | UIInterfaceOrientationMaskPortraitUpsideDown;
     */
}

- (BOOL) shouldAutorotate {
	return YES;
}

@end
