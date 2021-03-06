//
//  FKFlickrBlogsPostPhoto.m
//  FlickrKit
//
//  Generated by FKAPIBuilder on 12 Jun, 2013 at 17:19.
//  Copyright (c) 2013 DevedUp Ltd. All rights reserved. http://www.devedup.com
//
//  DO NOT MODIFY THIS FILE - IT IS MACHINE GENERATED


#import "FKFlickrBlogsPostPhoto.h" 

@implementation FKFlickrBlogsPostPhoto

- (BOOL) needsLogin {
    return YES;
}

- (BOOL) needsSigning {
    return YES;
}

- (FKPermission) requiredPerms {
    return 1;
}

- (NSString *) name {
    return @"flickr.blogs.postPhoto";
}

- (BOOL) isValid:(NSError **)error {
    BOOL valid = YES;
	NSMutableString *errorDescription = [[NSMutableString alloc] initWithString:@"You are missing required params: "];
	if(!self.photo_id) {
		valid = NO;
		[errorDescription appendString:@"'photo_id', "];
	}
	if(!self.title) {
		valid = NO;
		[errorDescription appendString:@"'title', "];
	}
	if(!self.description) {
		valid = NO;
		[errorDescription appendString:@"'descr', "];
	}

	if(error != NULL) {
		if(!valid) {	
			NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorDescription};
			*error = [NSError errorWithDomain:FKFlickrKitErrorDomain code:FKErrorInvalidArgs userInfo:userInfo];
		}
	}
    return valid;
}

- (NSDictionary *) args {
    NSMutableDictionary *args = [NSMutableDictionary dictionary];
	if(self.blog_id) {
		[args setValue:self.blog_id forKey:@"blog_id"];
	}
	if(self.photo_id) {
		[args setValue:self.photo_id forKey:@"photo_id"];
	}
	if(self.title) {
		[args setValue:self.title forKey:@"title"];
	}
	if(self.descr) {
		[args setValue:self.descr forKey:@"description"];
	}
	if(self.blog_password) {
		[args setValue:self.blog_password forKey:@"blog_password"];
	}
	if(self.service) {
		[args setValue:self.service forKey:@"service"];
	}

    return [args copy];
}

- (NSString *) descriptionForError:(NSInteger)error {
    switch(error) {
		case FKFlickrBlogsPostPhotoError_BlogNotFound:
			return @"Blog not found";
		case FKFlickrBlogsPostPhotoError_PhotoNotFound:
			return @"Photo not found";
		case FKFlickrBlogsPostPhotoError_PasswordNeeded:
			return @"Password needed";
		case FKFlickrBlogsPostPhotoError_BlogPostFailed:
			return @"Blog post failed";
		case FKFlickrBlogsPostPhotoError_InvalidSignature:
			return @"Invalid signature";
		case FKFlickrBlogsPostPhotoError_MissingSignature:
			return @"Missing signature";
		case FKFlickrBlogsPostPhotoError_LoginFailedOrInvalidAuthToken:
			return @"Login failed / Invalid auth token";
		case FKFlickrBlogsPostPhotoError_UserNotLoggedInOrInsufficientPermissions:
			return @"User not logged in / Insufficient permissions";
		case FKFlickrBlogsPostPhotoError_InvalidAPIKey:
			return @"Invalid API Key";
		case FKFlickrBlogsPostPhotoError_ServiceCurrentlyUnavailable:
			return @"Service currently unavailable";
		case FKFlickrBlogsPostPhotoError_FormatXXXNotFound:
			return @"Format \"xxx\" not found";
		case FKFlickrBlogsPostPhotoError_MethodXXXNotFound:
			return @"Method \"xxx\" not found";
		case FKFlickrBlogsPostPhotoError_InvalidSOAPEnvelope:
			return @"Invalid SOAP envelope";
		case FKFlickrBlogsPostPhotoError_InvalidXMLRPCMethodCall:
			return @"Invalid XML-RPC Method Call";
		case FKFlickrBlogsPostPhotoError_BadURLFound:
			return @"Bad URL found";
  
		default:
			return @"Unknown error code";
    }
}

@end
