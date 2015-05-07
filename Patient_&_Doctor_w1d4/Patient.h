//
//  Patient.h
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject {
    
}

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) int age;

@property (nonatomic, assign) bool healthcard;

@property (nonatomic, assign) NSString *symptom;

-(instancetype) initWithName: (NSString*)name age:(int)age andHealthCard:(bool)hascard andSymptom:(NSString*)symptom;

-(void) visitDoctor: (Doctor*)doctor;

@end
