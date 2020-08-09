//
//  GitHubGistsClient.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>
#import "GitHubGistsContent.h"

NS_ASSUME_NONNULL_BEGIN

@interface GitHubGistsClientTask : NSObject

- (BOOL)execute;

- (void)cancel;

@end

@interface GitHubGistsClient : NSObject

@property (class, readonly, strong) GitHubGistsClient *sharedClient;

- (void)login;

- (GitHubGistsClientTask *)uploadTaskWithConent:(GitHubGistsContent *)content
                              completionHandler:(void (^)(NSDictionary * response, NSError * _Nullable error))completionHandler;

- (void)cancelAllTasks;

@end

NS_ASSUME_NONNULL_END
