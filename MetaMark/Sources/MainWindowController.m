//
//  MainWindowController.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import "MainWindowController.h"
#import "GitHubGistsClient.h"

@interface MainWindowController () {
}

@end

@implementation MainWindowController

- (NSArray<NSString *> *)converters {
    return ConverterManager.sharedInstance.converters;
}

- (NSUInteger)selectedConverterIndex {
    return ConverterManager.sharedInstance.selectedConverterIndex;
}

- (void)setSelectedConverterIndex:(NSUInteger)selectedFormatIndex {
    ConverterManager.sharedInstance.selectedConverterIndex = selectedFormatIndex;
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
}

- (IBAction)loginButtonClicked:(id)sender {
    [GitHubGistsClient.sharedClient login];
}

@end
