//
//  UserAutoLayout.swift
//  GHFollowers
//
//  Created by Faisal Iqbal on 2/15/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import UIKit

@propertyWrapper
public struct UsesAutoLayout {
    
    public var wrappedValue: UIView {
        didSet {
            wrappedValue.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    public init(wrappedValue: UIView) {
        self.wrappedValue = wrappedValue
        wrappedValue.translatesAutoresizingMaskIntoConstraints = false
    }
}

