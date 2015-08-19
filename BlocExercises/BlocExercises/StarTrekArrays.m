//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
   NSArray *xyz = [characterString componentsSeparatedByString:@";"];
    
/*
    // Object Literals
    // 1. Arrays
    NSArray *abc = @[characterString]; // same as [NSArray arrayWithObjects:characterString, nil];
    
    // 2. Dictionaries
    NSDictionary *sampleDIctionary = @{ @"key" : @"value",
                                        @"Key2" : @"value2" };
    
    // 3. String
    NSString *stringLiteral = @"This is a string literal";
    
    // 4. Number/Value
    NSNumber *numberLiteral = @(123);
 
 */
    
    // Google: "format specifiers in Objective-c"; %d, %lu
//    NSString *sentence = @"The quick brown fox jumped over the lazy dog";
//    NSLog(@"%@", [[sentence componentsSeparatedByString:@" "] componentsJoinedByString:@""]);
//    
//    NSArray *sentenceArray = [sentence componentsSeparatedByString:@" "];
//    NSString *sentenceString = [sentenceArray componentsJoinedByString:@""];
//    
//    NSLog(@"This is a character string:%@", characterString);
//    NSLog(@"%@", characterString);
    

    return xyz;

}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */

    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
//    [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];
    NSArray *sortedArray = [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];

//
    return sortedArray;
    NSLog(@"%@ character array",characterArray);
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    NSMutableArray *mutableArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf'"];
    [mutableArray filterUsingPredicate:containsWorf];
    
    BOOL answer = mutableArray == nil || [mutableArray count] == 0;
    
    return (!answer);
}

@end
