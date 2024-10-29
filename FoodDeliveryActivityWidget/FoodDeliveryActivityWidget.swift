//
//  FoodDeliveryActivityWidget.swift
//  FoodDeliveryActivityWidget
//
//  Created by Benji Loya on 29.10.2024.
//

import WidgetKit
import SwiftUI

struct FoodDeliveryActivityWidget: Widget {

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: FoodDeliveryAttributes.self) { context in
            
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.center) {
                    VStack {
                        HStack {
                            Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 14, height: 14)
                                .foregroundStyle(.orange)
                            
                            Spacer()
                            
                            Text("~ \(context.state.arrivalTime)")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                        .padding(.horizontal, 10)
                        
                            HStack(spacing: 10) {
                                Image(systemName: "figure.outdoor.cycle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.orange)
                                
                                        Text("Your food is \non delivery")
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                        
                                    Spacer(minLength: 0)
                                    
                                        Button(action: {
                                            
                                        }, label: {
                                            HStack {
                                                Image(systemName: "phone.fill")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 14, height: 14)
                                                    .foregroundStyle(.white)
                                                
                                                Text("Call")
                                                    .font(.system(size: 10))
                                                    .foregroundStyle(.white)
                                            }
                                        })
                                        .buttonBorderShape(.capsule)
                                        Spacer()
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal, 10)
                        
                        
                    }
                }
                DynamicIslandExpandedRegion(.bottom) {
                    HStack {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("From")
                                .font(.system(size: 8))
                                .foregroundStyle(.gray)
                            Text(context.state.restaurantName)
                                .font(.system(size: 12))
                                .bold()
                        }
                        
                        Spacer(minLength: 0)
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("To")
                                .font(.system(size: 8))
                                .foregroundStyle(.gray)
                            Text(context.state.customerAddress)
                                .font(.system(size: 12))
                                .bold()
                        }
                    }
                    .frame(height: 20)
                    .padding(.horizontal, 20)
                }
            } compactLeading: {
                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 14, height: 14)
                    .foregroundStyle(.orange)
            } compactTrailing: {
                Text("Delivery")
            } minimal: {
                Image(systemName: "takeoutbag.and.cup.and.straw.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 14, height: 14)
                    .foregroundStyle(.orange)
            }
        }
    }
}
