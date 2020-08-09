//
//  PreferenceManager.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PreferenceManager : NSObject

@property (class, readonly, strong) PreferenceManager *sharedManager;

@property BOOL autoReloadEnabled;

@end

NS_ASSUME_NONNULL_END
