//
//  PanViewController.m
//  GestureDemo
//
//  Created by Karlo Pagtakhan on 03/19/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()
@property (strong, nonatomic) IBOutlet UILabel *horizontalVelocityLabel;
@property (strong, nonatomic) IBOutlet UILabel *verticalVelocityLabel;

@end

@implementation PanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
//  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 50.0f)];
//  CAGradientLayer *gradient = [CAGradientLayer layer];
//  gradient.frame = view.bounds;
//  gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor whiteColor] CGColor], (id)[[UIColor blackColor] CGColor], nil];
//  [view.layer insertSublayer:gradient atIndex:0];
  
  UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveViewWithGestureRecognizer:)];
  
  [self.testView addGestureRecognizer:panGestureRecognizer];
  
}

-(void)moveViewWithGestureRecognizer:(UIPanGestureRecognizer *)panGestureRecognizer{
  CGPoint touchLocation = [panGestureRecognizer locationInView:self.view];
  
  self.testView.center = touchLocation;
  
//  [self.view layoutIfNeeded];
  CGPoint velocity = [panGestureRecognizer velocityInView:self.view];
  
  self.horizontalVelocityLabel.text = [NSString stringWithFormat:@"Horizontal Velocity: %.2f points/sec", velocity.x];
  self.verticalVelocityLabel.text = [NSString stringWithFormat:@"Vertical Velocity: %.2f points/sec", velocity.y];
  
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
