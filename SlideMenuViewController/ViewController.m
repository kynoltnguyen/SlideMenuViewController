//
//  ViewController.m
//  SlideMenuViewController
//
//  Created by Tuan Nguyen Le on 6/24/16.
//  Copyright © 2016 Tuan Nguyen Le. All rights reserved.
//

#import "ViewController.h"
#import "SWRevealViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _item1.target = self.revealViewController;
    _item1.action = @selector(revealToggle:);
    _item2.target = self.revealViewController;
    _item2.action = @selector(rightRevealToggle:);
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Done:(id)sender {
    
}
@end
