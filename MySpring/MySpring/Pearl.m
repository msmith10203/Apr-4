//
//  Pearl.m
//  Spring
//
//  Created by NYU User on 11/17/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "Pearl.h"

@implementation Pearl
@synthesize location;

- (id) initWithLocation: (CGPoint) p
{
	self = [super init];
	if (self) {
		location = p;
		velocity = CGPointZero;
	}
	return self;
}

-(void) drag: (CGPoint) p {
    static const float stiffness = 0.2;
    static const float gravity = 3;
    static const float mass = 2;
    static float damping = 0.7;
    static float radius = 20;
    
    CGPoint force = CGPointMake((p.x - location.x) * stiffness,
    (p.y-location.y) * stiffness + gravity * mass);
    
    CGPoint acceleration = CGPointMake(force.x / mass, force.y / mass);
    
    velocity = CGPointMake(damping * (velocity.x + acceleration.x),
                           damping * (velocity.y + acceleration.y)
                           );
    location = CGPointMake(location.x + velocity .x, location.y+velocity.y);
    CGRect rect = CGRectMake(location.x-radius, location.y-radius, 2*radius, 2*radius);
    
    CGContextRef c = UIGraphicsGetCurrentContext();
    
	CGContextBeginPath(c);
	CGContextAddEllipseInRect(c, rect);
	CGContextSetRGBFillColor(c, 1, 1, 1, 1);	//white, opaque
	CGContextFillPath(c);
    
	CGContextBeginPath(c);
	CGContextMoveToPoint(c, location.x, location.y);
	CGContextAddLineToPoint(c, p.x, p.y);
	CGContextSetRGBStrokeColor(c, 1, 1, 1, 1);
	CGContextStrokePath(c);

    
                                
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
