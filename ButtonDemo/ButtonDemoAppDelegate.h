//
//  ButtonDemoAppDelegate.h
//  ButtonDemo
//
//  Created by Sean Che on 11-05-16.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ButtonDemoViewController;



@interface ButtonDemoAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    
    ButtonDemoViewController *viewController;
    

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) ButtonDemoViewController *viewController;

@end
