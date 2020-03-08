//
//  GFItemInfoVC.swift
//  GHFollowers
//
//  Created by Faisal Iqbal on 2/15/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import UIKit

enum Layout {
    static let padding: CGFloat = 20.0
    static let stackViewHeight: CGFloat = 50.0
    static let actionButtonHeight: CGFloat = 44.0
}

class GFItemInfoVC: UIViewController {

    let stackView = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    let actionButton = GFButton()

    var user: User!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackgroundView()
        layoutUI()
        configureStackView()
        configureActionButton()
        
    }
    
    private func configureBackgroundView() {
        view.layer.cornerRadius = 18
        view.backgroundColor = .secondarySystemBackground
    }
    
    private func configureStackView() {
        stackView.axis          = .horizontal
        stackView.distribution  = .equalSpacing
        
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    
    private func configureActionButton() {
        actionButton.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
    }
    
    @objc func actionButtonTapped() {}
    
    private func layoutUI() {
        view.addSubviews(stackView, actionButton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: Layout.padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.padding),
            stackView.heightAnchor.constraint(equalToConstant: Layout.stackViewHeight),
            
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -Layout.padding),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Layout.padding),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -Layout.padding),
            actionButton.heightAnchor.constraint(equalToConstant: Layout.actionButtonHeight)
        ])
    }
}
