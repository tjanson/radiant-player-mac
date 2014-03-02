/*
 * PreferencesWindowController.m
 *
 * Created by Sajid Anwar.
 *
 * Subject to terms and conditions in LICENSE.md.
 *
 */

#import "PreferencesWindowController.h"

@implementation PreferencesWindowController

@synthesize generalController;
@synthesize lastFmController;

- (id)init
{
    self = [self initWithViewControllers:[NSMutableArray array] title:@"Preferences"];
    
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([PreferencesWindowController class]) owner:self topLevelObjects:nil];
        [self loadControllers];
        [self.window setStyleMask:([self.window styleMask])];
    }
    
    return self;
}

- (void)loadControllers
{
    [self addViewController:generalController];
    [self addViewController:lastFmController];
    [self selectControllerAtIndex:0];
}

@end
