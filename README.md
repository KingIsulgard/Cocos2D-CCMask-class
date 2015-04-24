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

You can support [contributors](https://github.com/KingIsulgard/Cocos2D-CCMask-class/graphs/contributors) of this project individually. Every contributor is welcomed to add his/her line below with any content. Ordering shall be alphabetically by GitHub username.

Please consider a small donation if you use CCMask in your projects. It would make me really happy.

* [@KingIsulgard](https://github.com/KingIsulgard): <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=HQE64D8RQGPLC"><img src="https://www.paypalobjects.com/en_US/i/btn/btn_donate_LG.gif" alt="[paypal]" /></a> !

License and Warranty
====================

The license for the code is included with the project; it's basically a BSD license with attribution.

You're welcome to use it in commercial, closed-source, open source, free or any other kind of software, as long as you credit me appropriately.

The code comes with no warranty of any kind. I hope it'll be useful to you (it certainly is to me), but I make no guarantees regarding its functionality or otherwise.
