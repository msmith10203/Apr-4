//
//  View.h
//  MyViewController
//
//  Created by Mike Smith on 3/30/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface View : UIView {
    ViewController *viewController;
    UITextView *textView;
}

- (id) initWithFrame:(CGRect)frame controller: (ViewController*) c;

@end
