//
//  drawModel.h
//  PoliceSketch
//
//  Created by Zachary Mallicoat on 3/16/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DrawModel : NSObject

@property (nonatomic, strong)NSString *eyesImgName;
@property (nonatomic, strong)NSString *noseImgName;
@property (nonatomic, strong)NSString *mouthImgName;

-(void) lastEyes;
-(void) nextEyes;
-(void) lastNose;
-(void) nextNose;
-(void) lastMouth;
-(void) nextMouth;


@end




