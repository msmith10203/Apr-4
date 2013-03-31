//
//  FreakAppDelegate.h
//  Freak
//
//  Created by Mike Smith on 3/30/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FreakViewController;

@interface FreakAppDelegate : UIResponder <UIApplicationDelegate>{
    FreakViewController *_viewController;
    UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FreakViewController *viewController;
@end
