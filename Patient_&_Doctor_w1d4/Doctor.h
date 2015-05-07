//
//  Doctor.h
//  Patient_&_Doctor_w1d4
//
//  Created by Sunny Surdhar on 2015-05-07.
//  Copyright (c) 2015 Sunny Surdhar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *specialization;

@property (nonatomic, strong) NSMutableArray *patientList;

@property (nonatomic, strong) NSMutableArray *prescriptionList;

@property (nonatomic, strong) NSDictionary *diagnoses;


-(instancetype) initWithName: (NSString*)name specialization:(NSString*)specialization;

-(void) visit: (Patient*)patient;

-(void) writePrescription: (Patient*)patient;

@end
