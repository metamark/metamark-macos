//
//  PreviewViewController.m
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <WebKit/WebKit.h>
#import "PreviewViewController.h"
#import "ConverterManager.h"
#import "PreferenceManager.h"

@interface PreviewViewController () <WKNavigationDelegate, WKUIDelegate>

@property (weak) IBOutlet NSView *webViewHolder;

@end

WKWebView *webView;

@implementation PreviewViewController {
    WKNavigation *_navigation;
    NSRect _visibleRect;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [NSNotificationCenter.defaultCenter addObserver:self
                                           selector:@selector(didChangeContentNotification:)
                                               name:ConverterManagerDidChangeContentNotification
                                             object:nil];

     webView = [[WKWebView alloc] initWithFrame:self.webViewHolder.bounds];
    [webView setAutoresizingMask:(NSViewWidthSizable | NSViewHeightSizable)];
    [self.webViewHolder addSubview:webView];
    _visibleRect = NSZeroRect;
    [self relaodHtml];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

#pragma mark - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation {
    [webView scrollRectToVisible:_visibleRect];
}

#pragma mark - Notification Handler

- (void)didChangeContentNotification:(NSNotification *)notification {
    if (PreferenceManager.sharedManager.autoReloadEnabled) {
        [self relaodHtml];
    }
}

#pragma mark - Private Methods

- (void)relaodHtml {
    _visibleRect = webView.visibleRect;
    _navigation = [webView loadHTMLString:ConverterManager.sharedInstance.html
                                       baseURL:NSBundle.mainBundle.resourceURL];
}


#pragma mark - Handler

- (IBAction)reloadButtonClicked:(NSButton *)sender {
    [self relaodHtml];
}

@end
