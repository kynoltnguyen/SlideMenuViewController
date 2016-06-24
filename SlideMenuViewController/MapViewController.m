//
//  MapViewController.m
//  SlideMenuViewController
//
//  Created by Tuan Nguyen Le on 6/24/16.
//  Copyright © 2016 Tuan Nguyen Le. All rights reserved.
//

#import "MapViewController.h"
#import "SWRevealViewController.h"

@interface MapViewController ()

@end

#pragma mark - View lifecycle

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"Map", nil);
    SWRevealViewController *revealController = [self revealViewController];
    //[self.navigationController.navigationBar addGestureRecognizer:revealController.panGestureRecognizer];
    UIBarButtonItem *revealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                         style:UIBarButtonItemStylePlain target:revealController action:@selector(revealToggle:)];
    
    self.navigationItem.leftBarButtonItem = revealButtonItem;
    UIBarButtonItem *rightRevealButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"reveal-icon.png"]
                                                                              style:UIBarButtonItemStylePlain target:revealController action:@selector(rightRevealToggle:)];
    self.navigationItem.rightBarButtonItem = rightRevealButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
