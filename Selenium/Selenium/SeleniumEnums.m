//
//  Enums.m
//  Selenium
//
//  Created by Dan Cuellar on 3/19/13.
//  Copyright (c) 2013 Appium. All rights reserved.
//

#import "SeleniumEnums.h"

@implementation SeleniumEnums

+(NSString*) stringForTimeoutType:(SeleniumTimeoutType)type
{
    switch (type)
    {
        case SELENIUM_TIMEOUT_IMPLICIT:
            return @"implicit";
        case SELENIUM_TIMEOUT_SCRIPT:
            return @"script";
        case SELENIUM_TIMEOUT_PAGELOAD:
            return @"page load";
        default:
            return nil;
    }
}

+(SeleniumApplicationCacheStatus) applicationCacheStatusWithInt:(NSInteger)applicationCacheStatusInt
{
    switch (applicationCacheStatusInt)
    {
        case 0:
            return SELENIUM_APPLICATION_CACHE_STATUS_UNCACHED;
        case 1:
            return SELENIUM_APPLICATION_CACHE_STATUS_IDLE;
        case 2:
            return SELENIUM_APPLICATION_CACHE_STATUS_CHECKING;
        case 3:
            return SELENIUM_APPLICATION_CACHE_STATUS_DOWNLOADING;
        case 4:
            return SELENIUM_APPLICATION_CACHE_STATUS_UPDATE_READY;
        case 5:
            return SELENIUM_APPLICATION_CACHE_STATUS_OBSOLETE;
        default:
            return SELENIUM_APPLICATION_CACHE_STATUS_UNCACHED;
    }
}

+(NSInteger) intForMouseButton:(SeleniumMouseButton)button
{
    switch (button)
    {
        case SELENIUM_MOUSE_LEFT_BUTTON:
            return 0;
        case SELENIUM_MOUSE_MIDDLE_BUTTON:
            return 1;
        case SELENIUM_MOUSE_RIGHT_BUTTON:
            return 2;
        default:
            return 0;
    }
}

@end
