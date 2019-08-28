//
//  MainViewController.m
//  LazyLoad
//
//  Created by Sure on 2019/8/16.
//  Copyright © 2019 Sure. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (nonatomic, strong) UIView *loadingView;
@end

@implementation MainViewController

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"init");
        [self loadingView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
    [self loadingView];
    
}

- (UIView *)loadingView {
    if (!_loadingView) {
        NSLog(@"LoadingView LazyLoad");
        [self view];
        _loadingView = [[UIView alloc] init];
        NSLog(@"%p",_loadingView);
    }
    return _loadingView;
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
