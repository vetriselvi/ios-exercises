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
    
    int i = 12;
    NSInteger integer = 14;
    NSNumber *numberWithInt = [NSNumber numberWithInt:i];
    NSNumber *numberWithInteger = [NSNumber numberWithInteger:integer];
    
    NSInteger intValue = [number integerValue]*2; //get the integer value and NOT ints
    NSNumber *ans = [NSNumber numberWithInteger:intValue]; //(int)intValue? doubt
    return ans ;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *arrayOfNSInteger = [NSMutableArray array]; //imp : [NSMutableArray array] without this it'll be null
    
    NSInteger lowerNumber = MIN(number, otherNumber);
    NSInteger higherNumber = MAX(number, otherNumber);
    for (NSInteger i = lowerNumber; i < higherNumber; i++) {
        [arrayOfNSInteger addObject:@(i)];
    }
    
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
    //NSArray *arrayAns = [arrayOfNSInteger copy];

    return [arrayOfNSInteger copy] ;
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
