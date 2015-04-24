# Cocos2D CCMask Class
Cocos2D is a great framework for game development. Sadly it didn't contain one of the most required features for game development, masking.
I've written a class CCMask which makes masking in Cocos2D fairly easy.

You just have to define an object and a mask. And that's it!

Insert the CCMask class into your project and use the class just as the example below:

## Example 
```
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
```

## Redraw
You can also use redrawMasked is you feel the urge to rerender the mask, for example after you moved it.

```
  [masked redrawMasked];
```

Donate
======

Please consider a small donation if you use CCMask in your projects. It would make me really happy.

<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="HQE64D8RQGPLC">
<input type="image" src="" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/nl_NL/i/scr/pixel.gif" width="1" height="1">
</form>

License and Warranty
====================

The license for the code is included with the project; it's basically a BSD license with attribution.

You're welcome to use it in commercial, closed-source, open source, free or any other kind of software, as long as you credit me appropriately.

The code comes with no warranty of any kind. I hope it'll be useful to you (it certainly is to me), but I make no guarantees regarding its functionality or otherwise.
