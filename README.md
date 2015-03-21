### Cocos2D Mask Class
Cocos2D is a great framework for game development. Sadly it didn't contain one of the most required features for game development, masking.
I've written a class CCMask which makes masking in Cocos2D fairly easy.

You just have to define an object and a mask. And that's it!

Insert the CCMask class into your project and use the class just as the example below:

// Ask director the the window size
CGSize size = [[CCDirector sharedDirector] winSize];

// Create an object and a mask
object = [CCSprite spriteWithFile:@"Ball.png"];
mask = [CCSprite spriteWithFile:@"star.png"];

// Set their positions
object.position = ccp(size.width * 0.5f, size.height * 0.5f + 310);
mask.position = ccp(size.width * 0.5f, size.height * 0.5f + 310);

// Create a masked image based on the object and the mask and add it to the screen
CCMask *masked = [CCMask createMaskForObject: object withMask: mask];
[self addChild: masked];

You can also use redrawMasked is you feel the urge to rerender the mask, for example after you moved it.
[masked redrawMasked];
