
#import <Foundation/Foundation.h>

//а вот это уже тот самый интерфейс. Он говорит "реализуй обязательно метод fullDescription, который возвращает строку!"

@protocol PersonProtocol <NSObject>

-(NSString *)fullDescription;

@end