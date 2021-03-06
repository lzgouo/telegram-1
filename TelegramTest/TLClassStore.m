//
//  TLClassStore.m
//  TelegramTest
//
//  Created by Dmitry Kondratyev on 10/26/13.
//  Copyright (c) 2013 keepcoder. All rights reserved.
//

#import "TLClassStore.h"


@implementation TLClassStore


- (id)init {
    self = [super init];
    if(self) {
        
      
    }
    return self;
}

+(void)initialize {
    [super initialize];
    
    [self.cs_classes setObject:[TL_messageActionEncryptedChat class] forKey:[NSNumber numberWithInt:1]];
    [self.cs_classes setObject:[TL_peerSecret class] forKey:[NSNumber numberWithInt:2]];
    [self.cs_classes setObject:[TL_localMessage class] forKey:[NSNumber numberWithInt:3]];
    [self.cs_classes setObject:[TL_destructMessage class] forKey:[NSNumber numberWithInt:4]];
    [self.cs_classes setObject:[TL_conversation class] forKey:[NSNumber numberWithInt:5]];
    
    
    [self.cs_classes setObject:[TL_outDocument class] forKey:[NSNumber numberWithInt:6]];
    [self.cs_classes setObject:[TL_localMessageService class] forKey:[NSNumber numberWithInt:8]];
    [self.cs_classes setObject:[TL_peerBroadcast class] forKey:[NSNumber numberWithInt:9]];
    [self.cs_classes setObject:[TL_broadcast class] forKey:[NSNumber numberWithInt:10]];
    [self.cs_classes setObject:[TL_messageActionSetMessageTTL class] forKey:[NSNumber numberWithInt:11]];
    [self.cs_classes setObject:[TL_secretServiceMessage class] forKey:[NSNumber numberWithInt:12]];
    [self.cs_classes setObject:[TL_messageActionBotDescription class] forKey:[NSNumber numberWithInt:13]];
    
    
    for(NSNumber* number in [self.cs_classes allKeys]) {
        [self.cs_constuctors setObject:number forKey:[self.cs_classes objectForKey:number]];
    }

}


@end

