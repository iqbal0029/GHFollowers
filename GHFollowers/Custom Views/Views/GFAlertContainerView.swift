//
//  GFAlertContainerView.swift
//  GHFollowers
//
//  Created by Faisal Iqbal on 2/29/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import UIKit

class GFAlertContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor       = .systemBackground
        layer.cornerRadius    = 16
        layer.borderWidth     = 2
        layer.borderColor     = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
}
