//
//  MainWindowController.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Cocoa/Cocoa.h>
#import "ConverterManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainWindowController : NSWindowController

@property (copy, readonly) NSArray<NSString *> *converters;
@property NSUInteger selectedConverterIndex;

@end

NS_ASSUME_NONNULL_END
