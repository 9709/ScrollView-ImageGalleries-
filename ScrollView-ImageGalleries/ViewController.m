//
//  ViewController.m
//  ScrollView-ImageGalleries
//
//  Created by Matthew Chan on 2019-01-21.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UITapGestureRecognizer *tapGesture1;
@property (strong, nonatomic) UITapGestureRecognizer *tapGesture2;
@property (strong, nonatomic) UITapGestureRecognizer *tapGesture3;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollViewDelegate = self;
    
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night"]];
    UIImageView *imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
    imageView1.contentMode = UIViewContentModeScaleAspectFit;
    imageView2.contentMode = UIViewContentModeScaleAspectFit;
    imageView3.contentMode = UIViewContentModeScaleAspectFit;
    imageView1.clipsToBounds = YES;
    imageView2.clipsToBounds = YES;
    imageView3.clipsToBounds = YES;
    
    // Mark:  turning on Auto Layout
    imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    
    // Mark: setting image constraints to scrollView
    [imageView1.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView1.leadingAnchor constraintEqualToAnchor:self.scrollView.leadingAnchor].active = YES;
    [imageView1.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    [imageView2.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView2.leadingAnchor constraintEqualToAnchor:imageView1.trailingAnchor].active = YES;
    [imageView2.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    
    [imageView3.topAnchor constraintEqualToAnchor:self.scrollView.topAnchor].active = YES;
    [imageView3.leadingAnchor constraintEqualToAnchor:imageView2.trailingAnchor].active = YES;
    [imageView3.bottomAnchor constraintEqualToAnchor:self.scrollView.bottomAnchor].active = YES;
    [imageView3.trailingAnchor constraintEqualToAnchor:self.scrollView.trailingAnchor].active = YES;
    
    // Mark: setting image size to rootView (intrinsic size)
    [imageView1.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [imageView1.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    [imageView2.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [imageView2.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
    [imageView3.heightAnchor constraintEqualToAnchor:self.view.heightAnchor].active = YES;
    [imageView3.widthAnchor constraintEqualToAnchor:self.view.widthAnchor].active = YES;
    
// Mark: Setting up segue to detailed page
    // Gesture for imageView 1
    self.tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget: self action:@selector(imageTapped1:)];
    imageView1.userInteractionEnabled = YES;
    [imageView1 addGestureRecognizer:self.tapGesture1];
    
    
    // Mark: Gesture for imageView 2
    self.tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped2:)];
    imageView2.userInteractionEnabled = YES;
    [imageView2 addGestureRecognizer:self.tapGesture2];
    
    
    // Mark: Gesture for imageView 3
    self.tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped3:)];
    imageView3.userInteractionEnabled = YES;
    [imageView3 addGestureRecognizer:self.tapGesture3];
}

// ============================= Methods for executing segue =============================
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailedViewController *detailedViewController = segue.destinationViewController;
    if ([sender isEqual: self.tapGesture1]) {
        
        [detailedViewController.childView setImage:[UIImage imageNamed:@"Lighthouse-in-Field"]];
        detailedViewController.inputImage = [UIImage imageNamed:@"Lighthouse-in-Field"];
    } else if ([sender isEqual: self.tapGesture2]) {
        [detailedViewController.childView setImage:[UIImage imageNamed:@"Lighthouse-night"]];
        detailedViewController.inputImage = [UIImage imageNamed:@"Lighthouse-night"];
    } else {
        [detailedViewController.childView setImage:[UIImage imageNamed:@"Lighthouse-zoomed"]];
    }
    
}
- (void)imageTapped1: (UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"Segue" sender:sender];
}

- (void)imageTapped2: (UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"Segue" sender:sender];
}

- (void)imageTapped3: (UITapGestureRecognizer *)sender {
    [self performSegueWithIdentifier:@"Segue" sender:sender];
}
@end
