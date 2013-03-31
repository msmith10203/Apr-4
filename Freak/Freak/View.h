//
//  View.h
//  Freak
//
//  Created by Mike Smith on 3/30/13.
//  Copyright (c) 2013 Mike Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FreakViewController;

@interface View : UIView{
    FreakViewController *viewController;
	UITextView *textView;
}

- (id) initWithFrame: (CGRect) frame controller: (FreakViewController *) c;

@end
