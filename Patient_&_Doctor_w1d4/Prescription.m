//
//  Prescription.m
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import "Prescription.h"

@implementation Prescription

-(instancetype) initWithName: (NSString*)name {
    self = [super init];
    
    if (self) {
        self.name = name;
    }
    
    return self;
}

@end


