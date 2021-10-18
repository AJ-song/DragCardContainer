//
//  UIView+Extension.swift
//  YHDragContainer
//
//  Created by jun on 2021/10/18.
//  Copyright © 2021 yinhe. All rights reserved.
//

import Foundation

extension UIView {
    private struct AssociatedKeys {
        static var panGestureKey = "com.galaxy.dragcard.panGestureKey"
        static var tapGestureKey = "com.galaxy.dragcard.tapGestureKey"
    }
    
    internal var panGesture: UIPanGestureRecognizer? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.panGestureKey) as? UIPanGestureRecognizer
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.panGestureKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    internal var tapGesture: UITapGestureRecognizer? {
        get {
            return objc_getAssociatedObject(self, &AssociatedKeys.tapGestureKey) as? UITapGestureRecognizer
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.tapGestureKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}