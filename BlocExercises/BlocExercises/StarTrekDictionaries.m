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
    NSString *favoriteDrink = characterDictionary[@"favorite drink"];
    if(favoriteDrink){ // if (favoriteDrink != nil && [favoriteDrink isKindOfClass:[NSString class]]) { x}
        return favoriteDrink;
    }
    
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
