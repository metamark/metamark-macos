//
//  PandocConverter.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>
#import "TextConverter.h"

NS_ASSUME_NONNULL_BEGIN

@interface PandocConverter : TextConverter

@property (readonly, copy) NSString *format;
@property (nullable, readonly, copy) NSString *header;
@property (readonly, copy) NSString *css;

- (instancetype)initWithTitle:(NSString *)title
                       format:(NSString *)format
                       header:(nullable NSString *)header
                          css:(nullable NSString *)css;

@end

NS_ASSUME_NONNULL_END
