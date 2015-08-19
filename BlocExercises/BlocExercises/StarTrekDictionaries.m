//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    //favorite drink
//    id serverObject = characterDictionary[@"key"];
//    if ([serverObject respondsToSelector:@selector(doubleValue)]) {   /* This will check for the particular method- specific to a class' method(selector is a method))*/
//        return [serverObject doubleValue];
//    }
    
    // demo for class specific stuff
    NSDictionary *demoCharacterDictionary = @{
                                              @"favorite drink" : @(12), //integer
                                              @"others' favorite" : @"coffee"
                                              };
    
    NSString *favoriteDrink2 = demoCharacterDictionary[@"favorite drink"]; //doesn't crash - bcos at run time all variables are considered as NSObjects' variables.. so
    //(due to NSDescription ) prints out in good/nice format in the log
    //NSLog(@"%@",favoriteDrink2);
    //specific to a particular method
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    
   /* if([favoriteDrink2 respondsToSelector:@selector(stringByAppendingString:)]) {
         [favoriteDrink stringByAppendingString:@"not a string!!"];
    } */
    
    //specific to a class
    if ([favoriteDrink isKindOfClass:[NSString class]]) { // if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) { x}

        return favoriteDrink;
    }
    
//    if(favoriteDrink){ // if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) { x}
//        return favoriteDrink;
//    }
    
    return nil; //doubt - nil is an id
    
   
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSArray *sortedArray = [charactersArray valueForKey:@"favorite drink"];

    return sortedArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *editedDictionary = [characterDictionary mutableCopy];
    [editedDictionary setObject:@"Miles to go before I sleep" forKey:@"quote"];

    return editedDictionary;
}

@end
