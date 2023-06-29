//
//  NameView.swift
//  poopedApp
//
//  Created by Danial Baizak on 29.06.2023.
//

import SwiftUI

struct NameView: View {
    @State var name: String = ""
    let alphabet: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var alphabetPos: [String: [Int]] = [:]
    var taken: [[Int]] = []
    
    init(){
        generatePosition()
    }
    
    var body: some View {
        ZStack {
            VStack {
                NameLabelView(name: $name)
                SaveButton()
            }
            
            ForEach(alphabetPos.sorted(by: { $0.key < $1.key }), id: \.key) { (char, position) in
                CharView(char: char, x_pos: position[0], y_pos: position[1], name: $name)
            }
        }
    }
    
    mutating func generatePosition() {
        
        for char in alphabet {
            var isValidPosition = false
            var newPosition: [Int] = []
            
            while !isValidPosition {
                let x = Int.random(in: 30...350)
                let y = Int.random(in: 30...750)
                
                // Check if the new position overlaps with any of the taken positions
                let overlappingPositions = taken.filter { position in
                    abs(x - position[0]) < 30 && abs(y - position[1]) < 30
                }
                
                if overlappingPositions.isEmpty {
                    // No overlap, the new position is valid
                    newPosition = [x, y]
                    isValidPosition = true
                }
            }
            
            // Add the new position to the taken positions and update the alphabetPos dictionary
            taken.append(newPosition)
            alphabetPos[char] = newPosition
        }
    }
}

struct CharView: View {
    @State var char: String
    @State var x_pos: Int
    @State var y_pos: Int
    @Binding var name: String
    
    var body: some View {
        Button(action:{addToName()}) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.black)
                    .frame(width: 30, height: 30)
                Text(char)
                    .foregroundColor(Color.white)
                    .font(Font(UIFont.regular_18))
            }
            .frame(width: 30, height: 30)
        }
        .position(x: CGFloat(x_pos), y: CGFloat(y_pos))
    }
    
    func addToName() {
            name += char
        }
}


struct NameLabelView: View {
    @Binding var name: String
    
    var body: some View {
        HStack{
            Text("Your name:")
                .font(Font(UIFont.medium_22))
            Text(name)
                .font(Font(UIFont.medium_22))
        }
    }
}

struct SaveButton: View {
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

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
