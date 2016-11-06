//
//  FKFlickrPhotosSetMeta.h
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrAPIMethod.h"

typedef enum {
	FKFlickrPhotosSetMetaError_PhotoNotFound = 1,		 /* The photo id passed was not the id of a photo belonging to the calling user. It might be an invalid id, or the photo might be owned by another user.  */
	FKFlickrPhotosSetMetaError_InvalidSignature = 96,		 /* The passed signature was invalid. */
	FKFlickrPhotosSetMetaError_MissingSignature = 97,		 /* The call required signing but no signature was sent. */
	FKFlickrPhotosSetMetaError_LoginFailedOrInvalidAuthToken = 98,		 /* The login details or auth token passed were invalid. */
	FKFlickrPhotosSetMetaError_UserNotLoggedInOrInsufficientPermissions = 99,		 /* The method requires user authentication but the user was not logged in, or the authenticated method call did not have the required permissions. */
	FKFlickrPhotosSetMetaError_InvalidAPIKey = 100,		 /* The API key passed was not valid or has expired. */
	FKFlickrPhotosSetMetaError_ServiceCurrentlyUnavailable = 105,		 /* The requested service is temporarily unavailable. */
	FKFlickrPhotosSetMetaError_FormatXXXNotFound = 111,		 /* The requested response format was not found. */
	FKFlickrPhotosSetMetaError_MethodXXXNotFound = 112,		 /* The requested method was not found. */
	FKFlickrPhotosSetMetaError_InvalidSOAPEnvelope = 114,		 /* The SOAP envelope send in the request could not be parsed. */
	FKFlickrPhotosSetMetaError_InvalidXMLRPCMethodCall = 115,		 /* The XML-RPC request document could not be parsed. */
	FKFlickrPhotosSetMetaError_BadURLFound = 116,		 /* One or more arguments contained a URL that has been used for abuse on Flickr. */

} FKFlickrPhotosSetMetaError;

/*

Set the meta information for a photo.




*/
@interface FKFlickrPhotosSetMeta : NSObject <FKFlickrAPIMethod>

/* The id of the photo to set information for. */
@property (nonatomic, strong) NSString *photo_id; /* (Required) */

/* The title for the photo. */
@property (nonatomic, strong) NSString *title; /* (Required) */

/* The description for the photo. */
@property (nonatomic, strong) NSString *descr; /* (Required) */


@end
