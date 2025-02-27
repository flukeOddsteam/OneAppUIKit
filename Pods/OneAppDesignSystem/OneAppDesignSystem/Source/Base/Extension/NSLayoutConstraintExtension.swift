//
//  NSLayoutConstraintExtension.swift
//  OneAppDesignSystem
//
//  Created by TTB on 10/11/2565 BE.
//

import UIKit

extension NSLayoutConstraint {
    @discardableResult
    func setMultiplier(multiplier: CGFloat) -> NSLayoutConstraint {

           NSLayoutConstraint.deactivate([self])

           let newConstraint = NSLayoutConstraint(
               item: firstItem as Any,
               attribute: firstAttribute,
               relatedBy: relation,
               toItem: secondItem,
               attribute: secondAttribute,
               multiplier: multiplier,
               constant: constant)

           newConstraint.priority = priority
           newConstraint.shouldBeArchived = self.shouldBeArchived
           newConstraint.identifier = self.identifier

           NSLayoutConstraint.activate([newConstraint])
           return newConstraint
       }
}
