//
//  LPSViewController.h
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "drawModel.h"


@interface LPSViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *eyesImgView;
@property (strong, nonatomic) IBOutlet UIImageView *noseImgView;
@property (strong, nonatomic) IBOutlet UIImageView *mouthImgView;

@property (strong, nonatomic) DrawModel *drawModel;


@end
