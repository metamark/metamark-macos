//
//  PhpMarkdownConverter.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import "PhpMarkdownConverter.h"

@implementation PhpMarkdownConverter

- (instancetype)init {
    self = [super initWithTitle:@"PHP Markdown Extra"
                         format:@"markdown_phpextra"
                         header:nil
                            css:@"markdown.css"];
    if (self) {
        ;
    }
    return self;
}

- (NSString *)formattedStringWithString:(NSString *)string format:(TextConverterFormat)format {
    switch (format) {
        case TextConverterFormatBold:
            return [NSString stringWithFormat:@"**%@**", string];
        case TextConverterFormatItalic:
            return [NSString stringWithFormat:@"*%@*", string];
        case TextConverterFormatBoldItalic:
            return [NSString stringWithFormat:@"***%@***", string];
        case TextConverterFormatStrikeThrough:
            return [NSString stringWithFormat:@"~~%@~~", string];
        case TextConverterFormatH1:
            return [NSString stringWithFormat:@"# %@", string];
        case TextConverterFormatH2:
            return [NSString stringWithFormat:@"## %@", string];
        case TextConverterFormatH3:
            return [NSString stringWithFormat:@"### %@", string];
        case TextConverterFormatH4:
            return [NSString stringWithFormat:@"#### %@", string];
        case TextConverterFormatH5:
            return [NSString stringWithFormat:@"##### %@", string];
        case TextConverterFormatH6:
            return [NSString stringWithFormat:@"###### %@", string];
        case TextConverterFormatCode: {
            return [NSString stringWithFormat:@"```\n%@\n```", string];
        }
        case TextConverterAddLineSeparator: {
            return [NSString stringWithFormat:@"%@\n---\n", string];
        }
        case TextConverterFormatLink: {
            return [NSString stringWithFormat:@"[%@](url)", string];
        }
        case TextConverterFormatQuote: {
            NSArray<NSString *> *lines = [string componentsSeparatedByString:@"\n"];
            NSMutableString *formattedString = [@"" mutableCopy];
            for (NSString *line in lines) {
                [formattedString appendString:@"> "];
                [formattedString appendString:line];
                [formattedString appendString:@"\n"];
            }
            return formattedString;
        }
        case TextConverterFormatListBulleted: {
            NSArray<NSString *> *lines = [string componentsSeparatedByString:@"\n"];
            NSMutableString *formattedString = [@"" mutableCopy];
            for (NSString *line in lines) {
                [formattedString appendString:@"- "];
                [formattedString appendString:line];
                [formattedString appendString:@"\n"];
            }
            return formattedString;
        }
        case TextConverterFormatListNumbered: {
            NSArray<NSString *> *lines = [string componentsSeparatedByString:@"\n"];
            NSMutableString *formattedString = [@"" mutableCopy];
            for (NSString *line in lines) {
                [formattedString appendString:@"1. "];
                [formattedString appendString:line];
                [formattedString appendString:@"\n"];
            }
            return formattedString;
        }
        default:
            break;
    }
    return string;
}

@end
