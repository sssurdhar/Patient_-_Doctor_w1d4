//
//  Doctor.m
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

-(instancetype) initWithName: (NSString*)name specialization:(NSString*)specialization {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.patientList = [[NSMutableArray alloc]init];
        self.prescriptionList = [[NSMutableArray alloc]init];
        self.diagnoses = @{@"pain": @"aspirin", @"broken leg":@"surgery"};
    }
    return self;
}


-(void) visit: (Patient*)patient{
    NSLog(@"Do you have a valid heath card?");
    if (patient.healthcard == YES) {
        NSLog(@"yes");
        NSLog(@"Welcome");
        [self.patientList addObject:patient];
    }else {
        NSLog(@"no");
        NSLog(@"go away");
    }
}

-(void) writePrescription: (Patient*)patient{
    if ([self.patientList containsObject:patient]) {
        NSLog(@"What is your symptom?");

        NSLog(@"My symptom is  %@", patient.symptom);
        
        NSString* prescription = [self.diagnoses valueForKey:patient.symptom];
        
        if (prescription == nil) {
            NSLog(@"Sorry nothing for your symptom %@", patient.symptom);
        } else {
            NSLog(@"Here you go! have a %@", prescription);
            [self.prescriptionList addObject: prescription];
        }
    }
    else {
        NSLog(@"Sorry, your not in my list");
    }
}

//-(void) prescriptionList:(Patient*)patient;{
//    if ([self.patientList containsObject:patient]) {
//        [prescriptionList addObject:patient.symptom];
//        NSLog(@"$@", prescriptionList)
//    }
//}


@end
