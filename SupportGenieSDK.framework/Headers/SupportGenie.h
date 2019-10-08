//
//  SupportGenie.h
//  kingfisher
//
//  Created by tarun mehta on 3/6/19.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface SupportGenie : NSObject

@property (readonly) NSPersistentContainer * persistentContainer;

+ (SupportGenie *)instance;
- (void) start:(NSString *)companyId userId:(NSString *)userId;
- (void) applicationDidBecomeActive;
- (void) showSessions;

@end

NS_ASSUME_NONNULL_END
