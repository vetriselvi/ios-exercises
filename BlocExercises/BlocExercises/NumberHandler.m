//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    NSInteger intValue = [number intValue]*2;
    NSNumber *ans = [NSNumber numberWithInt:intValue];
    return ans ;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *arrayOfNSInteger = [NSMutableArray array]; //[NSMutableArray array] without this it'll be null
    
    if (number<otherNumber) {
        for(NSInteger i= number; i <= otherNumber; i++){
        [arrayOfNSInteger addObject:[NSNumber numberWithInteger:i]];
        }
    }
    else  {
        for(NSInteger i= otherNumber; i <= number; i++){
            [arrayOfNSInteger addObject:[NSNumber numberWithInteger:i]];
        }
    }
    NSArray *arrayAns = [arrayOfNSInteger copy];

    return arrayAns ;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
//    NSNumber* min = [arrayOfNumbers valueForKeyPath:@"@min.self"];
//    NSInteger newMin = [min integerValue];
//
//    return newMin;
    
    return [[arrayOfNumbers valueForKeyPath:@"@min.self"] integerValue];
}

@end
