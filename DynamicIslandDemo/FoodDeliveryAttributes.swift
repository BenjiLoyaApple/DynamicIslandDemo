//
//  FoodDeliveryAttributes.swift
//  DynamicIslandDemo
//
//  Created by Benji Loya on 29.10.2024.
//

import Foundation
import ActivityKit

struct FoodDeliveryAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var arrivalTime: String
        var phoneNumber: String
        var restaurantName: String
        var customerAddress: String
    }
    
}
