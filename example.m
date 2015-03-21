// Ask director the the window size CGSize size = [[CCDirector sharedDirector] winSize];

// Create an object and a mask object = [CCSprite spriteWithFile:@"Ball.png"]; mask = [CCSprite spriteWithFile:@"star.png"];

// Set their positions object.position = ccp(size.width * 0.5f, size.height * 0.5f + 310); mask.position = ccp(size.width * 0.5f, size.height * 0.5f + 310);

// Create a masked image based on the object and the mask and add it to the screen CCMask *masked = [CCMask createMaskForObject: object withMask: mask]; [self addChild: masked];
