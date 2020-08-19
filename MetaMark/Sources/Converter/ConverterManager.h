//
//  ConverterManager.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>
#import "TextConverter.h"

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXPORT NSNotificationName ConverterManagerDidChangeContentNotification;

@interface ConverterManager : NSObject

@property (readonly) NSURL *url;
@property (copy, readonly) NSString *html;
@property (copy, readonly) NSArray<NSString *> *converters;
@property NSUInteger selectedConverterIndex;

+ (instancetype)sharedInstance;

- (void)setContentWithString:(NSString *)string;

- (TextConverter *)selectedConverter;

@end

NS_ASSUME_NONNULL_END
