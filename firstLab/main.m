
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+CheckStringLengthCategory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *diana = [[Person alloc] initWithParams:@"Diana" lastName:@"Volodchenko" age:22];
        
        Person *yan = [[Person alloc] initWithParams:@"Yan" lastName:@"Guly" age:22];

        
        [diana addFriend:yan];
        
        NSLog(@"%@", [diana fullDescription]);

        [diana logListOfFriends];
        
        
        NSLog([diana isHisFriend:yan] ? @"Yes" : @"No");
        
        NSLog([Person checkStringLength:diana.firstName] ? @"Yes, string is OK" : @"No, string is really long!");

    }
    return 0;
}
