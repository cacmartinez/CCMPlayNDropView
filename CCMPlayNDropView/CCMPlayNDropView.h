//
//  Copyright (c) 2014 Carlos Compean.

//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  Created by Compean on 12/11/14.
//

#import <UIKit/UIKit.h>
#import "CCMBorderView.h"

@class CCMPlayNDropView;

@protocol CCMPlayNDropViewDelegate <NSObject>

@optional
-(void)CCMPlayNDropViewWillStartDismissAnimationWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewDidFinishDismissAnimationWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewCanceledDismissWithDynamics:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropView:(CCMPlayNDropView *)view willStartDismissCancelAnimationWithDuration:(CGFloat)duration;
-(void)CCMPlayNDropViewDidFinishDismissCancelAnimation:(CCMPlayNDropView *)view;
-(void)CCMPlayNDropViewManualTraslationDidStart:(CCMPlayNDropView *)view;

/**
 * @param cancelPercentage The percentage from 0 to 1 of how far away from reaching the dismissable radius
 * @param angle The angle (degrees) of the current center position of the view in the dismissable circle area
 */
-(void)CCMPlayNDropView:(CCMPlayNDropView *)view manualTraslationDidMoveWithPercentageToCancel:(CGFloat)cancelPercentage angle:(CGFloat)angle;

@end

@interface CCMPlayNDropView : CCMBorderView

@property (weak) IBOutlet id<CCMPlayNDropViewDelegate> delegate;

///**
// * This property enables or dissables the dynamic traslation of the view
// */
//@property IBInspectable BOOL dynamicTraslationEnabled;

/**
 * This property enables or dissables the dynamic dismissal feature.
 * By default this property is 'YES'
 */
@property IBInspectable BOOL dismissable;

/**
 * Area where if touches end after dragging won't dismiss the view, but rather set it to the original position
 * This property is only relevant if dynamicDismissalEnabled is enabled
 */
//@property NSValue *nonDismissingArea;
@property NSNumber *nonDismissingRadius;

/**
 * View from where the gesture touches should get the location
 * If non given the default value will be the superview
 */
@property UIView *locationReferenceView;

/**
 * This property limits the angle (degrees) that the view can take according to the movement of the anchorPoint.
 * If none is given the default angle used is 15º (PI/12)
 */
@property IBInspectable CGFloat maxAngle;

/**
 * This property sets the magnitude of the gravity applied to the view once it is dropped in a dissmissable area.
 * If none given the default magnitude is 0.5
 */
@property IBInspectable CGFloat gravity;

/**
 * This property sets the duration of the animation to return to its original position if dropped in the cancelable area
 * If none is given a duration of 0.3 seconds will take place
 */
@property NSNumber *cancelAnimationDuration;

@end
