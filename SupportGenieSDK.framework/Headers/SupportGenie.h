//
//  SupportGenie.h
//  kingfisher
//
//  Created by tarun mehta on 3/6/19.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SupportGenieDelegate <NSObject>
-(void)onUnreadMessagesChanged: (unsigned long)numUnreadMessages;
@end

@interface SupportGenie : NSObject

@property (readonly) NSPersistentContainer * persistentContainer;
@property (nonatomic,weak) id <SupportGenieDelegate> delegate;
@property (nonatomic) unsigned long unreadMessages;

+ (SupportGenie *)instance;
- (void) start;
- (void) start:(NSString * _Nullable)companyId;
- (void) start:(NSString * _Nullable)companyId userId:(NSString * _Nullable)userId;
- (void) start:(NSString * _Nullable)companyId userId:(NSString * _Nullable)userId userData:(NSDictionary * _Nullable)userData;
- (void) applicationDidBecomeActive;
- (void) showSessions;
- (BOOL) isInitialized;

@end

NS_ASSUME_NONNULL_END
