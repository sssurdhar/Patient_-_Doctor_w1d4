//
//  Patient.m
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype) initWithName: (NSString*)name age:(int)age andHealthCard:(bool)hascard andSymptom:(NSString *)symptom{
    self = [super init];
    
    if (self) {
        self.name = name;
        self.age = age;
        self.healthcard = hascard;
        self.symptom = symptom;
    }
    
    return self;
}

-(void) visitDoctor: (Doctor*)doctor{
    [doctor visit:self];
    
}






@end
