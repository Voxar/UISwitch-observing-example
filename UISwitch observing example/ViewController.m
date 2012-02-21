//
//  ViewController.m
//  UISwitch observing example
//
//  Created by Patrik Sjöberg on 2012-02-21.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize switchWithObserver;
@synthesize labelResultForSwitchWithObserver;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self.switchWithObserver addObserver:self forKeyPath:@"on" options:0 context:NULL];
}

-(void)dealloc
{
	[self.switchWithObserver removeObserver:self forKeyPath:@"on"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
	self.labelResultForSwitchWithObserver.text = self.switchWithObserver.on ? @"On" : @"Off";
}

-(IBAction)toggleSwitchWithObserver:(id)sender
{
	self.switchWithObserver.on = !self.switchWithObserver.on;
}

-(IBAction)toggleSwitchWithObserverAnimated:(id)sender
{
	[self.switchWithObserver setOn:!self.switchWithObserver.on animated:YES];
}

@end
