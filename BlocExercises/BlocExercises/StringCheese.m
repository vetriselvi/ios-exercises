//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    NSString *dotString = @".";
    NSString *outputString = [NSString stringWithFormat:@"My favorite cheese is %@%@",cheeseName,dotString];
    return outputString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *onlyCheeseName;
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        onlyCheeseName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
         onlyCheeseName = cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return onlyCheeseName;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *outputString;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        NSString *singularCheeseString = @" cheese";
        outputString = [NSString stringWithFormat:@"%lu%@",(unsigned long)cheeseCount,singularCheeseString];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *pluralCheeseString = @" cheeses";
        outputString = [NSString stringWithFormat:@"%lu%@",(unsigned long)cheeseCount,pluralCheeseString];
        
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return outputString;
}

@end
