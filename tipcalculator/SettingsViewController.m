//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Tim Lee on 2015/6/10.
//  Copyright (c) 2015年 Y.CORP.YAHOO.COM\timlee. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControlDefault;
- (IBAction)changeTip:(id)sender;
- (void) changeDefaultTip;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipControlDefault.selectedSegmentIndex = [[NSUserDefaults standardUserDefaults] integerForKey:@"default_tip_amount"];
    [self changeDefaultTip];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeTip:(id)sender {
    [self changeDefaultTip];
}

- (void) changeDefaultTip
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setInteger:self.tipControlDefault.selectedSegmentIndex forKey:@"default_tip_amount"];
    
    [defaults synchronize];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
