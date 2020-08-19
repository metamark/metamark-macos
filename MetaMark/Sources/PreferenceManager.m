//
//  PreferenceManager.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import "PreferenceManager.h"

static NSString *AutoReloadEnabledKey = @"AutoReloadEnabled";

@implementation PreferenceManager

+ (PreferenceManager *)sharedManager {
    static PreferenceManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (BOOL)autoReloadEnabled {
    @synchronized (self) {
        return [NSUserDefaults.standardUserDefaults boolForKey:AutoReloadEnabledKey];
    }
}

- (void)setAutoReloadEnabled:(BOOL)value {
    @synchronized (self) {
        [NSUserDefaults.standardUserDefaults setBool:value forKey:AutoReloadEnabledKey];
    }
}

- (void)resetToDefaults {
    @synchronized (self) {
        [NSUserDefaults resetStandardUserDefaults];
        [NSUserDefaults.standardUserDefaults removeObjectForKey:AutoReloadEnabledKey];
        [NSUserDefaults.standardUserDefaults synchronize];
    }
}

@end
