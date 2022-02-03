#import <Foundation/NSString.h>

%hook NTKFace

+(BOOL)isRestrictedForDevice:(id)arg1 {
	return NO; 
}

+(BOOL)isAvailableForDevice:(id)arg1 {
	return YES;
}

%end
%hook NTKPrideFace

+(BOOL)isRestrictedForDevice:(id)arg1 {
	return NO; 
}

+(BOOL)isAvailableForDevice:(id)arg1 {
	return YES;
}

%end
%hook NTKPrideDigitalFace

+(BOOL)isRestrictedForDevice:(id)arg1 {
	return NO; 
}

+(BOOL)isAvailableForDevice:(id)arg1 {
	return YES;
}

%end
%hook NTKPrideAnalogFace

+(BOOL)isRestrictedForDevice:(id)arg1 {
	return NO; 
}

+(BOOL)isAvailableForDevice:(id)arg1 {
	return YES;
}

%end

%hook NRDevice
-(id)valueForProperty:(NSString *)arg1 {
	if ([arg1 containsString:@"regionInfo"]) {
		NSLog(@"replacing regionInfo");
		return(@"LL/A");
	}
	else if ([arg1 containsString:@"regionCode"]) {
		NSLog(@"replacing regionCode");
		return(@"US");
        }
	else {
		return(%orig);
	}
}

%end
