//
//  drawModel.m
//  PoliceSketch
//
//  Created by Zachary Mallicoat on 3/16/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "drawModel.h"

@implementation DrawModel {
    int startingEyes;
    int startingNose;
    int startingMouth;
}

//-(int) countUpByOneEyes:(int)oneUpEyes {
//    oneUpEyes = startingEyes ++;
//    return startingEyes;
//}
//
//-(int) countUpByOneNose:(int)oneUpNose {
//    oneUpNose = startingNose ++;
//    return startingNose;
//}
//
//-(int) countUpByOneMouth:(int)oneUpMouth {
//    oneUpMouth = startingMouth ++;
//    return startingMouth;
//}



-(instancetype)init {
    self = [super init];
    if (self) {
        startingEyes = arc4random_uniform(4) + 1;
        startingNose = arc4random_uniform(4) + 1;
        startingMouth = arc4random_uniform(4) + 1;
        
        _eyesImgName = [NSString stringWithFormat:@"eyes_%d.jpg",startingEyes];
        _noseImgName = [NSString stringWithFormat:@"nose_%d.jpg",startingNose];
        _mouthImgName = [NSString stringWithFormat:@"mouth_%d.jpg", startingMouth];
        
    }
    
    return self;
}

-(void) lastEyes {
    self.eyesImgName = [NSString stringWithFormat:@"eyes_%d.jpg",--startingEyes];
    if (startingEyes == 0) {
        startingEyes = 5;
    }
}

-(void) lastMouth {
    self.mouthImgName = [NSString stringWithFormat:@"mouth_%d.jpg", --startingMouth];
    if (startingMouth == 0) {
        startingMouth = 5;
    }
    
}

-(void) lastNose {
    self.noseImgName = [NSString stringWithFormat:@"nose_%d.jpg", --startingNose];
    if (startingNose == 0) {
        startingNose = 5;
    }
    
}

-(void) nextEyes {
    startingEyes++;
    
    if (startingEyes > 5) {
        startingEyes = 1;
    }
    
    self.eyesImgName = [NSString stringWithFormat:@"eyes_%d.jpg",startingEyes];
}

-(void) nextMouth {
    self.mouthImgName = [NSString stringWithFormat:@"mouth_%d.jpg", ++startingMouth];
    if (startingMouth == 6) {
        startingMouth = 1;
    }
    
}

-(void) nextNose {
    self.noseImgName = [NSString stringWithFormat:@"nose_%d.jpg", ++startingNose];
    if (startingNose == 6) {
        startingNose = 1;
    }
    
}
@end
