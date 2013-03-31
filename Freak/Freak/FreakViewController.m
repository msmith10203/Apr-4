//
//  FreakViewController.m
//  Freak
//
//  Created by Mike Smith on 3/30/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import "FreakViewController.h"
#import "View.h"

@interface FreakViewController ()

@end

@implementation FreakViewController


- (id) initWithNibName: (NSString *) nibNameOrNil bundle: (NSBundle *) nibBundleOrNil {
	self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil];
	if (self) {
		// Custom initialization
		self.title = @"Title";
		self.tabBarItem.image = [UIImage imageNamed: @"star.png"];
		self.tabBarItem.badgeValue = @"b";
        
        self.navigationItem.prompt = @"Welcome to";
        self.navigationItem.title = @"More Elaborate Title";
        
        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]
                                                  initWithBarButtonSystemItem: UIBarButtonSystemItemDone
                                                  target: nil
                                                  action: NULL
                                                  ];
	}
	return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - View lifecycle

- (void) loadView
{
	CGRect frame = [UIScreen mainScreen].applicationFrame;
	self.view = [[View alloc] initWithFrame: frame controller: self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload{
    [super viewDidUnload];
}

- (void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}

-(void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

-(void) viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

@end
