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
- (void) start;
- (void) start:(NSString * _Nullable)companyId;
- (void) start:(NSString * _Nullable)companyId userId:(NSString * _Nullable)userId;
- (void) start:(NSString * _Nullable)companyId userId:(NSString * _Nullable)userId userData:(NSDictionary * _Nullable)userData;
- (void) applicationDidBecomeActive;
- (void) showSessions;

@end

NS_ASSUME_NONNULL_END
