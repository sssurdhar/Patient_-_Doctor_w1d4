//
//  main.m
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Patient* patient1 = [[Patient alloc]initWithName:@"Vinny" age:20 andHealthCard:YES andSymptom:@"pain"];
        
        Patient* patient2 = [[Patient alloc]initWithName:@"Oliver" age:21 andHealthCard:YES andSymptom:@"broken leg"];
        
        Patient* patient3 = [[Patient alloc]initWithName:@"Ian" age:20 andHealthCard:NO andSymptom:@"pain"];
        
        Patient* patient4 = [[Patient alloc]initWithName:@"Cory" age:20 andHealthCard:YES andSymptom:@"broken arm"];


        
        Doctor* doctor = [[Doctor alloc]initWithName:@"Dr. Phil" specialization:@"gp"];
        
        
        [patient1 visitDoctor:doctor];
        [doctor writePrescription:patient1];

        [patient2 visitDoctor:doctor];
        [doctor writePrescription:patient2];

        [patient3 visitDoctor:doctor];
        [doctor writePrescription:patient3];
        
        [patient4 visitDoctor:doctor];
        [doctor writePrescription:patient4];
        
        
        
        NSLog(@"%@", doctor.prescriptionList);
        
        NSLog(@"%@", doctor.patientList);
                
    }
    return 0;
}

