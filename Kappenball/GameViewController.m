//
//  GameViewController.m
//  Kappenball
//
//  Created by 武淅 段 on 2016/10/28.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

#import "GameViewController.h"
#import "constant.h"
#import "UIColor+TAToolkit.h"
#import "CanvasView.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UILabel *average;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *energy;
@end

@implementation GameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CanvasView *canvas = [[CanvasView alloc]initWithFrame:SCREEN_BOUNDS];
    [canvas setBackgroundColor:[UIColor blackColor]];
    [self.view insertSubview:canvas atIndex:0];
}


- (IBAction)tapPause:(id)sender {
    
}
- (IBAction)tapEnd:(id)sender {
    
}
- (IBAction)sliderValueChange:(UISlider *)sender {
}
@end
