//
//  ViewController.m
//  PhotoDemo
//

#import "ViewController.h"
#import "DDPhotoViewController.h"

@interface ViewController ()

//展示身份证图片用
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 247, 150)];
    
    _imgView.center = self.view.center;
    
    _imgView.image = [UIImage imageNamed:@"ms_id_upside"];
    
    [self.view addSubview:_imgView];
    
    _imgView.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(gotoCamera:)];
    
    [_imgView addGestureRecognizer:tap];
    
}


- (void)gotoCamera:(UIGestureRecognizer *)sender {
    
    UIAlertController *alertController = [[UIAlertController alloc]init];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction *photoAction = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        DDPhotoViewController *vc = [[DDPhotoViewController alloc] init];
        
        
        vc.imageblock = ^(UIImage *image) {
            self.imgView.image = image;
        };
        
        [self presentViewController:vc animated:YES completion:nil];
    }];
    
    [alertController addAction:cancelAction];
    [alertController addAction:photoAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

@end

