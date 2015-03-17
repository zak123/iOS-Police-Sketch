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
    startingEyes--;
    
    if (startingEyes < 1) {
        startingEyes = 5;
    }
    
    self.eyesImgName = [NSString stringWithFormat:@"eyes_%d.jpg",startingEyes];
}

-(void) lastMouth {
    startingMouth--;
    
    if (startingMouth < 1) {
        startingMouth = 5;
    }
    
    self.mouthImgName = [NSString stringWithFormat:@"mouth_%d.jpg", startingMouth];
   
    
    
}

-(void) lastNose {
    startingNose--;
    
    if (startingNose < 1) {
        startingNose = 5;
    }
    
    self.noseImgName = [NSString stringWithFormat:@"nose_%d.jpg", startingNose];
}

-(void) nextEyes {
    startingEyes++;
    
    if (startingEyes > 5) {
        startingEyes = 1;
    }
    
    self.eyesImgName = [NSString stringWithFormat:@"eyes_%d.jpg",startingEyes];
}

-(void) nextMouth {
    startingMouth++;
    
    if (startingMouth > 5) {
        startingMouth = 1;
    }
    self.mouthImgName = [NSString stringWithFormat:@"mouth_%d.jpg", startingMouth];
    
}

-(void) nextNose {
    startingNose++;
    
    if (startingNose > 5) {
        startingNose = 1;
    }
    
    self.noseImgName = [NSString stringWithFormat:@"nose_%d.jpg", startingNose];

    
}
@end
