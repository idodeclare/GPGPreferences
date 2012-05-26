//
//  GPGCommentTransformer.m
//  GPGPreferences
//
//  Created by Chris Fraire on 5/26/12.
//  Copyright (c) 2012 Chris Fraire. All rights reserved.
//

#import "GPGCommentTransformer.h"

@implementation GPGCommentTransformer

+ (Class)transformedValueClass { return [NSArray class]; }

+ (BOOL)allowsReverseTransformation { return YES; }

- (id)transformedValue:(id)value 
{
	NSArray *input = value;
    return [input componentsJoinedByString:@"\n"];
}

- (id)reverseTransformedValue:(id)value 
{
    // originally from GPGToolsPrefController

	NSArray *lines = [value componentsSeparatedByString:@"\n"];
	NSMutableArray *filteredLines = [NSMutableArray array];
	NSCharacterSet *whitespaceCharacterSet = [NSCharacterSet whitespaceCharacterSet];
	NSCharacterSet *nonWhitespaceCharacterSet = [whitespaceCharacterSet invertedSet];

	for (NSString *line in lines) {
		if ([line rangeOfCharacterFromSet:nonWhitespaceCharacterSet].length > 0) {
			[filteredLines addObject:[line stringByTrimmingCharactersInSet:whitespaceCharacterSet]];
		}
	}

    return filteredLines;
}

@end
