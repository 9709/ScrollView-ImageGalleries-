//
//  ViewController.h
//  ScrollView-ImageGalleries
//
//  Created by Matthew Chan on 2019-01-21.
//  Copyright © 2019 Matthew Chan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, weak) id <UIScrollViewDelegate> scrollViewDelegate;

@end

