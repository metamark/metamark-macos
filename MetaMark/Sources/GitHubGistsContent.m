//
//  GitHubGistsContent.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import "GitHubGistsContent.h"

@implementation GitHubGistsContent

- (instancetype)initWithContent:(NSString *)content
                          title:(NSString *)title
                       fileName:(NSString *)fileName {
    self = [super init];
    if (self) {
        _title = [title copy];
        _content = [content copy];
        _fileName = [fileName copy];
    }
    return self;
}

@end
