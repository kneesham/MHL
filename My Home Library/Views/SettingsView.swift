//
//  SettingsView.swift
//  My Home Library
//
//  Created by Ted Nesham on 1/30/23.
//

import Foundation
import SwiftUI


struct SettingsView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var privacyToggle = false
    @State private var userCity = ""
    @State private var userState = ""
    @State private var userZip = ""
    
    var body: some View {
        NavigationView(content: {
                Form {
                    
                    Section(header:Text("Privacy Info"), footer:Text("Your general area will be updated on the Discover Map.")) {
                        Toggle("Make Discoverable", isOn: $privacyToggle)
                    }
                    
                    Section(header:Text("Personal Information")) {
                        TextField("First Name", text: $firstName)
                            .disableAutocorrection(true)
                        TextField("First Name", text: $lastName)
                            .disableAutocorrection(true)
                            
                        DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                    }
                    
                    Section(header:Text("Location")) {
                        TextField("City", text: $userCity)
                        TextField("State", text: $userState)
                        TextField("Zip", text: $userZip)
                    }
                }
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    Button("save", action: saveSettings)
                }
            }
        })
    }
    
    func saveSettings() {
        print("do something")
    }
}
