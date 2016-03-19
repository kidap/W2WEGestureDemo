//
//  PinchViewController.m
//  GestureDemo
//
//  Created by Karlo Pagtakhan on 03/19/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()
@property (strong, nonatomic) IBOutlet UIView *testView;

@end

@implementation PinchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  UIPinchGestureRecognizer *pinchGestureRecognizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchWithGestureRecognizer:)];
  [self.testView addGestureRecognizer:pinchGestureRecognizer];
  
}
-(void)handlePinchWithGestureRecognizer:(UIPinchGestureRecognizer *)pinchGestureRecognizer{
  self.testView.transform = CGAffineTransformScale(self.testView.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale);
  pinchGestureRecognizer.scale = 1.0;
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
