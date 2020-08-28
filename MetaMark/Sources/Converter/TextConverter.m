//
//  TextConverter.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import "TextConverter.h"

@implementation TextConverter {
    NSString *_title;
}

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (self) {
        _title = [title copy];
    }
    return self;
}

- (NSString *)title {
    return _title;
}

- (NSString *)format {
    return @"markdown";
}

- (nullable NSString *)css {
    return nil;
}

- (nullable NSString *)script {
    return nil;
}

- (nullable NSString *)welcome {
    NSString *path = [NSBundle.mainBundle pathForResource:@"welcome" ofType:@"md"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (nullable NSString *)sample {
    NSString *path = [NSBundle.mainBundle pathForResource:@"sample" ofType:@"md"];
    NSData *data = [NSData dataWithContentsOfFile:path];
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

- (NSString *)html {
    NSString *html = @"<!DOCTYPE html>"
    "<html lang=\"ja\">"
    "<head>"
    "<meta charset=\"utf-8\">"
    "<title></title>"
    "</head>"
    "<body></body>"
    "</html>";
    return html;
}

- (NSString *)formattedStringWithString:(NSString *)string format:(TextConverterFormat)format {
    return string;
}

- (void)setContentWithString:(NSString *)string {
    
}

@end
