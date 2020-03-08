//
//  GFError.swift
//  GHFollower
//
//  Created by Faisal Iqbal on 1/26/20.
//  Copyright © 2020 zerones. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    
    case invalidUsername = "This username created an invalid request, Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connectivity"
    case invalidResponse = "Invalid response from the server. Please try again"
    case invalidData = "Invalid data received. Please try again"
    case unableToFavorite = "There was an error fovoriting this user. Please try again"
    case alreadyInFavorites = "You've already favorited this user."
}
