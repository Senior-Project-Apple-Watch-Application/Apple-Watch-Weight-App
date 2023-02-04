//
//  ChartView.swift
//  Weight Display
//
//  Created by Antonella on 9/22/22.
//
import SwiftUI
import SwiftUICharts

struct ChartView: View {
    var demoData: [Double] = [328, 330, 330.1, 330, 330.4, 330.9, 330.2, 330, 330.1, 330, 330.4, 330.9]
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    LineView(data: demoData, title: "Monthly", legend: "Weight over the past 30 days").padding(15)
                    
        
                    
                }
            } .navigationTitle("Weight History")
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
            .preferredColorScheme(.dark)
    }
}
