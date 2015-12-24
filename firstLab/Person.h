
#import <Foundation/Foundation.h>
#import "PersonProtocol.h"

//Всего-навсего объявление класса, его описание. Это не тот самый интерфейс, о котором все подумали
@interface Person : NSObject <PersonProtocol>

@property NSString *firstName;
@property NSString *lastName;
@property NSUInteger age;
@property (readonly) NSMutableArray *friendsList;

-(id)initWithParams: (NSString *)firstName_ lastName:(NSString *)lastName_ age:(NSUInteger *) age_;
-(void)addFriend:(Person *)friend;
-(BOOL)isHisFriend:(Person *)person;
-(void)logListOfFriends;

@end
