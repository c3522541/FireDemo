//
//  ButtonDemoViewController.m
//  ButtonDemo
//
//  Created by Sean Che on 11-05-16.
//  Copyright 2011 n/a. All rights reserved.
//

#import "ButtonDemoViewController.h"


@implementation ButtonDemoViewController

- (void)loadView
{
    UIView *contentView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    self.view = contentView;
    [contentView release];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(160.0f, 0.0f, 160.0f, 160.0f);
    button.center = CGPointMake(160.0f, 240.0f);
    
    [button setTitle:@"Button Test" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showInfo) forControlEvents:UIControlEventTouchUpInside];
    
    button.hidden = NO;
    button.alpha = 1.0f;
    [self.view addSubview:button];
}

- (void)showInfo
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"without IB" message:@"This is Alert View." delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
    [alert release];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
