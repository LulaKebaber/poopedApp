//
//  ContentView.swift
//  poopedApp
//
//  Created by Danial Baizak on 29.06.2023.
//

import SwiftUI
import UIKit

struct RegistrationView: View {
    @State private var username = "name"
    let buttons = [
        Information(text: "Add your name", destination: AnyView(NameView())),
        Information(text: "Add your surname", destination: AnyView(SurnameView())),
        Information(text: "Add your age", destination: AnyView(AgeView())),
        Information(text: "Add your sex", destination: AnyView(SexView())),
        Information(text: "Add your town", destination: AnyView(TownView())),
        Information(text: "Add your country", destination: AnyView(CountryView())),
        Information(text: "Phone Number",
                   destination: AnyView(PhoneNumberView()))
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(buttons) { button in
                    AddInfo(actionName: button.text, destination: button.destination)
                }
            }
        }
    }
}

struct AddInfo<Destination: View>: View {
    @State var actionName: String
    var destination: Destination
    
    var body: some View {
        Button(action:{}) {
            NavigationLink(destination: destination){
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                        .frame(width: 360, height: 50)
                    Text(actionName)
                        .foregroundColor(Color.white)
                        .font(Font(UIFont.regular_26))
                }
            }
        }
    }
}

struct Information<Destination: View>: Identifiable {
    var text: String
    var destination: Destination
    var id = UUID()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
