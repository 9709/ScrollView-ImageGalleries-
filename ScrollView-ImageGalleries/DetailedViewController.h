//
//  DetailedViewController.h
//  ScrollView-ImageGalleries
//
//  Created by Matthew Chan on 2019-01-21.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailedViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, weak) id <UIScrollViewDelegate> scrollViewDelegate;
@property (weak, nonatomic) IBOutlet UIImageView *childView;
@property (nonatomic) UIImage *inputImage;

@end

NS_ASSUME_NONNULL_END
