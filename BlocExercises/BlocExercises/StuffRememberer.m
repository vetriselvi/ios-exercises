//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
   self.mutableArrayWithStrong = arrayToRemember;

    
    NSLog(@"Test1 %@",self.mutableArrayWithStrong);
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
    self.mutableArrayWithCopy = [arrayToCopy mutableCopy];
    
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
    self.cgfloatVariable = floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    /* WORK HERE */
    
    return self.mutableArrayWithStrong;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [self.mutableArrayWithCopy mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.cgfloatVariable;
}

@end