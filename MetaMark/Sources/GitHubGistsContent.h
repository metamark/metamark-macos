//
//  GitHubGistsContent.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GitHubGistsContent : NSObject

@property (nonatomic, copy) NSString *content;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *fileName;

- (instancetype)initWithContent:(NSString *)content
                          title:(NSString *)title
                       fileName:(NSString *)fileName;

@end

NS_ASSUME_NONNULL_END
