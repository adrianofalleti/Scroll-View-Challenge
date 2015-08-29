//
//  ViewController.h
//  UIScrollViewChallenge
//
//  Created by Adriano Falleti on 29/08/15.
//  Copyright (c) 2015 Adriano Falleti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong,nonatomic) UIImageView *globalImageView;

@end

