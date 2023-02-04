//
//  SettingsView.swift
//  Weight Display
//
//  Created by Antonella on 11/7/22.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    
    var body: some View {
        NavigationView {
            Form {
                displaySection
                appInfoSection
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton()
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}

extension SettingsView {

    private var displaySection: some View {
        
        Section (header: Text("Display"),
                 footer: Text("Systems Settings will override Dark Mode and use the current device theme.")) {
            Toggle(isOn: .constant(true),
                   label: {
                Text("Dark Mode")
            })
           Toggle(isOn: .constant(false),
                  label: {
               Text("Use System Settings")
           })
                   
            }
        }
    
    private var appInfoSection: some View {
        Section (header: Text("Weight Display App")) {
            VStack(alignment: . leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("App description goes here.")
                    .font(.callout)
                    .fontWeight(.medium)
            }
            .padding(.vertical)
            Link("Website", destination: defaultURL)
            Link("Support", destination: defaultURL)
        }
    }
}
