//
//  NSString+PigLatin.m
//  Pig Latin
//
//  Created by Zach Smoroden on 2016-05-06.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization {
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSMutableString *output = [@"" mutableCopy];
    
    
    for (NSString *word in words) {
        NSMutableString *newWord = [@"" mutableCopy];
        NSArray *components = [word componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiou"]];
//        for (int i = 1; i < components.count; i++) {
//            if(i == 1) {
//                NSMakeRange(<#NSUInteger loc#>, <#NSUInteger len#>)
//                [newWord appendString:[components[i] capitalizedString]];
//            } else {
//                [newWord appendString:components[i]];
//            }
//        }
        
        NSRange range = [word rangeOfString:components[0]];
//        NSRange punctuationRange = [word set:[NSCharacterSet punctuationCharacterSet]];
        [newWord appendString:[[word substringWithRange:NSMakeRange(range.location + range.length , word.length - range.length)] capitalizedString]];
        [newWord appendString:[[components firstObject] lowercaseString]];
        [newWord appendString:@"ay "];

        [output appendString:newWord];
    }
    
    return output;
}

@end
