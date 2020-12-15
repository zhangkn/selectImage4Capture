//
//  DDPhotoViewController.h
//  Loan
//

#import <UIKit/UIKit.h>


typedef void(^ImageBlock)(UIImage *image);

@interface DDPhotoViewController : UIViewController

@property (nonatomic, copy) ImageBlock imageblock;


@end
