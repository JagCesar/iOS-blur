# iOS-blur

In iOS 7 a new view is shown in several places that is transparent and has a nice blur effect. However Apple hasn't given us a public API to use this amazing view.

Apple gave us some sample code at WWDC that blurs an UIImage object. It looks great, but isn't as cool as a view that blurs the views behind it in realtime.

I needed this in one of my projects, so after some thinking I came up with a brilliant and simple idea. It only works for iOS 7.

## Screenshot
![Screenshot](https://raw.github.com/JagCesar/iOS-blur/master/screenshot.png "Example of JCRBlurView")

## How is it done?

I simply took a UIToolbar, placed it as a subview and voila!

## Awesome! So, how do I use it?

You just use it as any normal UIView object. I wanted it to be as simple as possible, and I think I've managed to do just that.

To use it you copy JCRBlurView.h and JCRBlurView.m to your project. Make sure to import it, initialise it, set a frame and add it to your view. That's it! :)

```
JCRBlurView *blurView = [JCRBlurView new];
[blurView setFrame:CGRectMake(0.0f,0.0f,100.0f,100.0f)];
[self.view addSubview:blurView];
```

If you prefer using Auto Layout that works great too!

## What about using it as a [cocoapod](http://cocoapods.org/?q=ios-blur)? It would be SO much easier!

Just add: `pod 'iOS-blur'` to your Podfile and run `pod install`

## License
iOS-blur is released under the WTFPL-license (see the LICENSE file)
