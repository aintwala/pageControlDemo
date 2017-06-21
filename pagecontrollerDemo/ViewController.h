//
//  ViewController.h
//  pagecontrollerDemo
//
//  Created by ami on 7/15/16.
//  Copyright © 2016 com.zaptechsolutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSMutableArray *aryimg;
}
@property (strong, nonatomic) IBOutlet UIScrollView *scrlview;
@property (strong, nonatomic) IBOutlet UIPageControl *pagecontrol;

- (IBAction)pgAction:(id)sender;


@property(strong,nonatomic)UIImageView *imgview;
@end

