//
//  UIViewController+Ext.swift
//  GHFollower
//
//  Created by Faisal Iqbal on 1/26/20.
//  Copyright © 2020 zerones. All rights reserved.
//

import UIKit
import SafariServices

extension UIViewController {
    func presentGFAlertOnMain(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            
            self.present(alertVC, animated: true)
        }
    }
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
}
