CCMPlayNDropView
===========

[![License APACHE](https://img.shields.io/hexpm/l/plug.svg)](https://github.com/cacmartinez/CCMPlayNDropView/blob/master/LICENSE)
[![Release](https://img.shields.io/github/release/cacmartinez/CCMPlayNDropView.svg)](https://github.com/cacmartinez/CCMPlayNDropView)

CCMPlayNDropView is an easy to use view that with the help of UIKit dynamics animations it creates an effect similar to that used in the swarm app when dismissing views.

It can be easily integrated with the [MaryPopin pod](https://github.com/Backelite/MaryPopin) to create a nice in and out animation.

![CCMPlayNDrop](https://github.com/cacmartinez/CCMPlayNDropView/blob/master/Screenshots/demoGif.gif)

===========

## Usage

In the storyboard draw a view to your controller and assign it the CCMPlayNDropView class. If you want there is also the possibility to customize some attributes right from the attributes inspector

It has the following delegate methods that you can use to have more control of the flow of your app.


````Objective-C
-(void)CCMPlayNDropViewWillStartDismissAnimationWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewDidFinishDismissAnimationWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewCanceledDismissWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropView:(CCMPlayNDropView *)view willStartDismissCancelAnimationWithDuration:(CGFloat)duration;
-(void)CCMPlayNDropViewDidFinishDismissCancelAnimation:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewManualTraslationDidStart:(CCMPlayNDropView *)view;

````

It is important to know that even though the view moves out of the screen when flicking it or dropping the view, it is not removed from the superview automatically, so you must remember to handle that when `CCMPlayNDropViewDidFinishDismissAnimationWithDynamics:` gets called

## Requirements

Xcode version 6.0 or later.

## Installation

Download or clone the repository, and copy the CCMPlayNDropView.h and the CCMPlayNDropView.m files to your project.

## Author

Carlos Compean, ccompean@icalialabs.com

## License

CCMPlayNDropView is available under the Apache License, Version 2.0. See the LICENSE file for more info.

