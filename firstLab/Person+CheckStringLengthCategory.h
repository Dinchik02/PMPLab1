
#import <Foundation/Foundation.h>
#import "Person.h"

@interface Person (CheckStringLengthCategory)
@property NSUInteger maxStringLength;
+(BOOL) checkStringLength:(NSString *) string;

@end
