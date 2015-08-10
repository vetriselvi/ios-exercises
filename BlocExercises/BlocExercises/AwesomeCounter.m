//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableString *inStr = [[NSMutableString alloc]init];

    
    if (number<otherNumber) {
  
    for (NSInteger i=number; i<=otherNumber;i++){
                [inStr appendString:[NSString stringWithFormat:@"%ld ",(long)i]];
        [inStr setString:[inStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];


    }
    }
    else {
        
        for (NSInteger i=otherNumber; i<=number;i++){
            [inStr appendString:[NSString stringWithFormat:@"%ld ",(long)i]];
            [inStr setString:[inStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]]];
            
            
        }
    }

    NSLog(@"instring %@",inStr);
    return inStr;
    
}



@end
