//
//  Pearl.h
//  Spring
//
//  Created by NYU User on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Pearl: UIView {
	CGPoint location;
	CGPoint velocity;
}

- (id) initWithLocation: (CGPoint) p;
- (void) drag: (CGPoint) p;

@property (nonatomic, assign) CGPoint location;
@end
