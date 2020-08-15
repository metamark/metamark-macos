//
//  TextConverter.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, TextConverterFormat) {
    TextConverterFormatBold,
    TextConverterFormatItalic,
    TextConverterFormatBoldItalic,
    TextConverterFormatStrikeThrough,
    TextConverterFormatH1,
    TextConverterFormatH2,
    TextConverterFormatH3,
    TextConverterFormatH4,
    TextConverterFormatH5,
    TextConverterFormatH6,
    TextConverterFormatQuote,
    TextConverterFormatCode,
    TextConverterAddLineSeparator,
    TextConverterFormatLink,
    TextConverterFormatListBulleted,
    TextConverterFormatListNumbered
};

@interface TextConverter : NSObject

@property (readonly, copy) NSString *title;
@property (nullable, readonly, copy) NSString *sample;
@property (readonly, copy) NSString *html;
@property (readonly, copy) NSData *data;

- (instancetype)initWithTitle:(NSString *)title;

- (NSString *)formattedStringWithString:(NSString *)string format:(TextConverterFormat)format;

- (void)setContentWithString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
