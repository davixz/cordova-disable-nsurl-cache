//
//  CordovaDisableNSURLCache.m
//  cordova-disable-nsurl-cache
//
//  Created by Mauro Gadaleta  on 16/09/2014.
//
//

#import "CordovaDisableNSURLCache.h"

@implementation CordovaDisableNSURLCache

- (void)pluginInitialize
{
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil]; 
    [NSURLCache setSharedURLCache:URLCache];  
    
}

- (CordovaDisableNSURLCache*)initWithWebView:(UIWebView*)theWebView
{
    return self;
}

@end