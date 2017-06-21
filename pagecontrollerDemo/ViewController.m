//
//  ViewController.m
//  pagecontrollerDemo
//
//  Created by ami on 7/15/16.
//  Copyright © 2016 com.zaptechsolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    aryimg=[@[@"img1.jpg",@"img2.jpeg",@"img3.jpg",@"img4.jpg"]mutableCopy];
    int xPos=0;
    for (int i=1;i<=aryimg.count;i++) {
        UIImageView *img =[[UIImageView alloc]initWithFrame:CGRectMake(xPos, -50, self.view.frame.size.width,self.view.frame.size.height)];
        [img setImage:[UIImage imageNamed:[aryimg objectAtIndex:i-1]]];
        [img setContentMode:UIViewContentModeScaleAspectFit];
        [_scrlview addSubview:img];
        xPos=self.view.frame.size.width*i;
    }
    [_pagecontrol bringSubviewToFront:_scrlview];

}

-(void)viewDidLayoutSubviews{
    self.automaticallyAdjustsScrollViewInsets = NO;
    _scrlview.scrollEnabled = TRUE;
    _scrlview.pagingEnabled = TRUE;
    _imgview.image = [UIImage imageNamed:[aryimg objectAtIndex:0]];
    _scrlview.contentSize = CGSizeMake(self.view.frame.size.width*[aryimg count],_scrlview.frame.size.height);
    [_scrlview setBackgroundColor:[UIColor orangeColor]];
}



-(void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView  {
    NSInteger pageNumber = roundf(scrollView.contentOffset.x / (scrollView.frame.size.width));
    _pagecontrol.currentPage=pageNumber;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pgAction:(id)sender {
}


@end
