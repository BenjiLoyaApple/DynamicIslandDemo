//
//  ContentView.swift
//  DynamicIslandDemo
//
//  Created by Benji Loya on 29.10.2024.
//

import SwiftUI
import ActivityKit

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                do {
                    deleteAllActivities()
                    
                    let id = try LiveActivityManager.startActivity(arrivalTime: "15 min", phoneNumber: "+1(325)9234577", restaurantName: "Mcdonald's", customerAddress: "22b Baker St, San Francisco")
                    
                    UserDefaultsManager.saveNewActivity(id: id, arrivalTime: "15 min", phoneNumber: "+1(325)9234577", restaurantName: "Mcdonald's", customerAddress: "22b Baker St, San Francisco, CA 94103")
                } catch {
                    print(error.localizedDescription)
                }
            }, label: {
                Text("Plase Order")
                    .foregroundStyle(.primary)
            })
        }
        .padding()
    }
    
    private func deleteAllActivities() {
        for item in
                UserDefaultsManager.fetchActivities() {
            if let activity =
                Activity<FoodDeliveryAttributes>.activities.first(where: {
                    $0.contentState.phoneNumber == item.phoneNumber })
            {
                Task {
                    await LiveActivityManager.endActivity(activity.id)
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
