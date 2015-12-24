
#import <Foundation/Foundation.h>
#import "Person+CheckStringLengthCategory.h"


@implementation Person (CheckStringLengthCategory)

NSUInteger maxLength = 140;

+(BOOL) checkStringLength:(NSString *) string;
{
    NSUInteger innerStringLength = [string length];
    NSLog(@"String length: %lu", innerStringLength);
    if (innerStringLength >= maxLength) {
        return false;
    }
    return true;
}

@end
