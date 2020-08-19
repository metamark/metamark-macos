//
//  Logger.h
//  MetaMark
//
//  Originally developed by Iwaki Satoshi (2018), then forked by Francesco Baldassarri (2020)
//  Markdown Editor Copyright © 2018 Satoshi Iwaki. MetaMark Copyright © 2020 Francesco Baldassarri.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG

#define LogE(...) NSLog(__VA_ARGS__)
#define LogW(...) NSLog(__VA_ARGS__)
#define LogI(...) NSLog(__VA_ARGS__)
#define LogD(...) NSLog(__VA_ARGS__)
#define LogV(...) NSLog(__VA_ARGS__)

#else

#define LogE(...)
#define LogW(...)
#define LogI(...)
#define LogD(...)
#define LogV(...)

#endif

