//
//  SwipeViewController.m
//  GestureDemo
//
//  Created by Karlo Pagtakhan on 03/19/2016.
//  Copyright © 2016 AccessIT. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//  
  UISwipeGestureRecognizer *swipeRightOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
  swipeRightOrange.direction = UISwipeGestureRecognizerDirectionRight;
  UISwipeGestureRecognizer *swipeRightBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
  swipeRightBlack.direction = UISwipeGestureRecognizerDirectionRight;
  UISwipeGestureRecognizer *swipeRightGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
  swipeRightGreen.direction = UISwipeGestureRecognizerDirectionRight;
  
  UISwipeGestureRecognizer *swipeLeftOrange = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
  swipeLeftOrange.direction = UISwipeGestureRecognizerDirectionLeft;
  UISwipeGestureRecognizer *swipeLeftBlack = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
  swipeLeftBlack.direction = UISwipeGestureRecognizerDirectionLeft;
  UISwipeGestureRecognizer *swipeLeftGreen = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
  swipeLeftGreen.direction = UISwipeGestureRecognizerDirectionLeft;
  
  [self.viewOrange addGestureRecognizer:swipeRightOrange];
  [self.viewOrange addGestureRecognizer:swipeLeftOrange];
  
  [self.viewBlack addGestureRecognizer:swipeRightBlack];
  //[self.viewBlack addGestureRecognizer:swipeLeftBlack];
  
  //[self.viewGreen addGestureRecognizer:swipeRightGreen];
  [self.viewGreen addGestureRecognizer:swipeLeftGreen];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
  
}
-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
  [UIView animateWithDuration:0.5 animations:^{
    self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, 320.0, 0.0);
    self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, 320.0, 0.0);
    self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, 320.0, 0.0);
  }];
}
-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer{
  [UIView animateWithDuration:0.5 animations:^{
    self.viewOrange.frame = CGRectOffset(self.viewOrange.frame, -320.0, 0.0);
    self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -320.0, 0.0);
    self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -320.0, 0.0);
  }];
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
