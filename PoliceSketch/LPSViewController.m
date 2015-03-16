//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"

@interface LPSViewController ()

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.drawModel = [[DrawModel alloc] init];
    
    self.eyesImgView.image = [UIImage imageNamed:self.drawModel.eyesImgName];
    self.noseImgView.image = [UIImage imageNamed:self.drawModel.noseImgName];
    self.mouthImgView.image = [UIImage imageNamed:self.drawModel.mouthImgName];
    
}

- (IBAction)buttonNextEyes:(id)sender {
    NSLog(@"next eyes");
    [self.drawModel nextEyes];
    self.eyesImgView.image = [UIImage imageNamed:self.drawModel.eyesImgName];
}

- (IBAction)buttonNextNose {
    NSLog(@"next nose");
    [self.drawModel nextNose];
    self.noseImgView.image = [UIImage imageNamed:self.drawModel.noseImgName];
}

- (IBAction)buttonNextMouth {
    NSLog(@"next mouth");
    [self.drawModel nextMouth];
    self.mouthImgView.image = [UIImage imageNamed:self.drawModel.mouthImgName];
}

- (IBAction)buttonLastEyes {
    NSLog(@"last eyes");
    [self.drawModel lastEyes];
    self.eyesImgView.image = [UIImage imageNamed:self.drawModel.eyesImgName];
    
}

- (IBAction)buttonLastNose {
    NSLog(@"last nose");
    [self.drawModel lastNose];
    self.noseImgView.image = [UIImage imageNamed:self.drawModel.noseImgName];
}

- (IBAction)buttonLastMouth {
    NSLog(@"last mouth");
    [self.drawModel lastMouth];
    self.mouthImgView.image = [UIImage imageNamed:self.drawModel.mouthImgName];
}

@end


