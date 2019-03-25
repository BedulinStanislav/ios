#import "Pangrams.h"

@implementation Pangrams

// Complete the pangrams function below.
- (BOOL)pangrams:(NSString *)string {
    string = [string lowercaseString];
    NSString *alphabet = @"abcdefghijklmnopqrstuvwxyz";
    for (int i = 0; i < [alphabet length]; i++) {
        NSString *character = [NSString stringWithFormat:@"%c", [alphabet characterAtIndex:i]];
        if (![string containsString:character])
            return NO;
    }
    return YES;
}

@end
