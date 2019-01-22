//
//  DetailedViewController.m
//  ScrollView-ImageGalleries
//
//  Created by Matthew Chan on 2019-01-21.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;


@end

@implementation DetailedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.scrollView.delegate = self;
    self.childView.image = self.inputImage;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    return self.childView;
}


@end
