//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Faisal Iqbal on 2/16/20.
//  Copyright © 2020 Sean Allen. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
