//
//  NSFileManager+Documents.h
//  Common
//
//  Created by William Boles on 12/04/2013.
//  Copyright (c) 2013 Boles. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (Documents)

+ (NSString *)documentsDirectoryPath;
+ (NSURL *)documentsDirectoryURL;

+ (BOOL) saveData:(NSData *)data toDocumentsDirectoryPath:(NSString *)path;
+ (BOOL) saveData:(NSData *)data toDocumentsDirectoryPath:(NSString *)path allowBackUp:(BOOL)allowBackUp;

+ (BOOL) deleteDataFromDocumentDirectoryWithPath:(NSString *)path;

+ (NSData *) retrieveDataFromDocumentDirectoryWithPath:(NSString *)path;

+ (BOOL) copyMainBundleDirectory:(NSString *)mainBundleDirectory toDocumentsDirectoryPath:(NSString *)path;
+ (BOOL) copyMainBundleDirectory:(NSString *)mainBundleDirectory toDocumentsDirectoryPath:(NSString *)path allowBackUp:(BOOL)allowBackUp;

+ (BOOL) fileExistsInDocumentDirectory:(NSString *)path;

+ (BOOL) addSkipBackupAttributeToItemAtURL:(NSURL *)URL;

@end
