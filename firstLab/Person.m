

#import <Foundation/Foundation.h>
#import "Person.h"

// А тут происходит имплементация (реализация) методов класса!
@implementation Person

//конструктор без параметров
- (id)init;
{
    self = [super init];
    if (self)
    {
        _friendsList = [NSMutableArray new];
    }
    return self;
}

//кастомный конструктор, конструктор с параметрами
- (id)initWithParams: (NSString *)firstName_ lastName:(NSString *)lastName_ age:(NSUInteger *) age_;
{
    self = [super init];
    if (self)
    {
        self.firstName = firstName_;
        self.lastName = lastName_;
        self.age = age_;
        
        _friendsList = [NSMutableArray new];
    }
    return self;
}

-(NSString *) fullDescription;
{
    NSString *descriptionString = [NSString stringWithFormat:@"Name: %@ %@; Age: %lu; FriendsCount: %lu;",
                                   self.firstName, self.lastName, self.age, [_friendsList count]];
    return descriptionString;
}

-(void) addFriend:(Person *)friend;
{
    NSLog(@"Adding %@ %@", friend.firstName, friend.lastName);
    [_friendsList addObject:friend];
}

-(void) logListOfFriends;
{
    NSLog(@"Logging friends");
    for (Person *friendName in _friendsList) {
        NSLog(@"%@ %@", friendName.firstName, friendName.lastName);
    }
}

-(BOOL) isHisFriend:(Person *)person;
{
    NSLog(@"is %@ %@ friend of %@?", person.firstName, person.lastName, self.firstName);
    for (Person *friend in _friendsList) {
        if (friend == person) {
            return true;
        }
    }
    return false;
}
@end
