
#import "LauncherViewController.h"

@interface LauncherViewController ()
@end

@implementation LauncherViewController

#pragma -
#pragma Private Methods

#pragma -
#pragma Inheritance Methods

- (void)loadView {
  [super loadView];
}

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
  [super viewDidUnload];
}

- (void)dealloc {
  [super dealloc];
}

#pragma -
#pragma Touch Event Handlers

- (IBAction)officialButtonTouched:(id)sender {
  CATransition *animation = [CATransition animation];
  animation.type = kCATransitionFade;
  animation.subtype = kCATransitionFromBottom;
  [animation setDuration:0.5];
  [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [[self.navigationController.view layer] addAnimation:animation forKey: @"transitionViewAnimation"];	
  
  BoardViewController *boardViewController = 
    [[[BoardViewController alloc] initWithNibName:@"BoardView" bundle:nil] autorelease];
  [self.navigationController pushViewController:boardViewController animated:NO];
}

- (IBAction)settingsButtonTouched:(id)sender {
  CATransition *animation = [CATransition animation];
  animation.type = kCATransitionFade;
  animation.subtype = kCATransitionFromBottom;
  [animation setDuration:0.5];
  [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
  [[self.navigationController.view layer] addAnimation:animation forKey: @"transitionViewAnimation"];	

  AppSettingsViewController *appSettingsViewController = 
    [[[AppSettingsViewController alloc] initWithNibName:@"IASKAppSettingsView" bundle:nil] autorelease];
  [self.navigationController pushViewController:appSettingsViewController animated:NO];

}

@end
