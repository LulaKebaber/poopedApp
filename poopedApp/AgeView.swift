//
//  AgeView.swift
//  poopedApp
//
//  Created by Danial Baizak on 29.06.2023.
//

import SwiftUI

import SwiftUI

struct AgeView: View {
    @State private var selectedAge: Int = 18 // Default selected age
    @State private var shuffledAges: [Int] = (1...100).shuffled() // Randomly shuffled ages

    var body: some View {
        VStack {
            Text("Select Your Age")
                .font(.title)
                .padding()

            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(shuffledAges, id: \.self) { age in
                        RadioButton(text: "\(age)", isSelected: age == selectedAge) {
                            selectedAge = age
                        }
                    }
                }
            }
            .padding()
            
            SaveAgeButtonView()
        }
    }
}

struct RadioButton: View {
    let text: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(isSelected ? .blue : .gray)
                    .imageScale(.large)
                Text(text)
                    .font(.body)
            }
            .foregroundColor(.primary)
            .padding(.vertical, 8)
        }
    }
}

struct SaveAgeButtonView: View {
    var body: some View {
        Button(action:{}) {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(Color.black)
                    .frame(width: 80, height: 33)
                Text("Save")
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct AgeView_Previews: PreviewProvider {
    static var previews: some View {
        AgeView()
    }
}
