//
//  ViewController.m
//  LazyLoad
//
//  Created by Sure on 2019/8/16.
//  Copyright © 2019 Sure. All rights reserved.
//

#import "ViewController.h"
#import "MainViewController.h"
static NSString *const LSureLoginSucessNoti = @"LSureLoginSucessNoti";
@interface ViewController ()
@property (nonatomic, strong) MainViewController *mainVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mainVC];
}

- (MainViewController *)mainVC {
    if (!_mainVC) {
        _mainVC = [[MainViewController alloc] init];
    }
    return _mainVC;
}

@end
