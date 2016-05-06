//
//  main.m
//  Pig Latin
//
//  Created by Zach Smoroden on 2016-05-06.
//  Copyright © 2016 Zach Smoroden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        NSString *test = @"This will be piglatined.";
        
        NSLog(@"%@", test);
        
        NSLog(@"Piglatined string: %@", [test stringByPigLatinization]);
        
        
        
        
    }
    return 0;
}
