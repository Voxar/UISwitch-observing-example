//
//  ViewController.h
//  UISwitch observing example
//
//  Created by Patrik Sjöberg on 2012-02-21.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, retain) IBOutlet UISwitch *switchWithObserver;
@property (nonatomic, retain) IBOutlet UILabel *labelResultForSwitchWithObserver;
@end
