#import "Diagonal.h"

@implementation Diagonal

// Complete the diagonalDifference function below.
- (NSNumber *) diagonalDifference:(NSArray *)array {
    NSInteger firstDiagonal = 0;
    NSInteger secondDiagonal = 0;
    for (int i = 0; i < array.count; i++) {
        NSString *str = [array objectAtIndex:i];
        NSArray<NSString *> *addArray = [str componentsSeparatedByString: @" "];
        firstDiagonal += [[addArray objectAtIndex:i] intValue];
        secondDiagonal +=  [[addArray objectAtIndex:array.count - i - 1] intValue];
        }
    return @(labs(firstDiagonal - secondDiagonal));
}

@end
