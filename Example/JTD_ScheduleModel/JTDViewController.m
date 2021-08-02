//
//  JTDViewController.m
//  JTD_ScheduleModel
//
//  Created by wangxinghua on 07/30/2021.
//  Copyright (c) 2021 wangxinghua. All rights reserved.
//

#import "JTDViewController.h"
#import "ScheduleViewController.h"
@interface JTDViewController ()

@end

@implementation JTDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)schedulePush:(id)sender {
    ScheduleViewController *VC = [[ScheduleViewController alloc] initWithNibName:@"ScheduleViewController" bundle:nil];
    [self.navigationController pushViewController:VC animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
