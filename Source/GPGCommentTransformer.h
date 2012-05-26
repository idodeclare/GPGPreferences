//
//  GPGCommentTransformer.h
//  GPGPreferences
//
//  Created by Chris Fraire on 5/26/12.
//  Copyright (c) 2012 Chris Fraire. All rights reserved.
//

#import <Foundation/Foundation.h>

// Represents a transformer that creates a contiguous NSString
// from an NSArray of strings (which come from GPGOptions) and
// vice versa.
@interface GPGCommentTransformer : NSValueTransformer

@end
