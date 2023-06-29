//
//  SurnameView.swift
//  poopedApp
//
//  Created by Danial Baizak on 29.06.2023.
//

import SwiftUI

struct SurnameView: View {
    @State var morseCodeDictionary: [String: String] = [
        ".-": "A", "-...": "B", "-.-.": "C", "-..": "D", ".": "E",
        "..-.": "F", "--.": "G", "....": "H", "..": "I", ".---": "J",
        "-.-": "K", ".-..": "L", "--": "M", "-.": "N", "---": "O",
        ".--.": "P", "--.-": "Q", ".-.": "R", "...": "S", "-": "T",
        "..-": "U", "...-": "V", ".--": "W", "-..-": "X", "-.--": "Y",
        "--..": "Z"
    ]
    
    @State private var enteredMorseCode = ""
    @State private var convertedText = ""
    @State private var savedText = ""
    
    var body: some View {
        VStack {
            Text("Enter Morse Code:")
                .font(Font(UIFont.medium_26))
                .padding()
            
            
            ButtonsView(enteredMorseCode: $enteredMorseCode, convertedText: $convertedText, morseCodeDictionary: $morseCodeDictionary)
            
            ConvertView(enteredMorseCode: $enteredMorseCode, convertedText: $convertedText, savedText: $savedText, morseCodeDictionary: $morseCodeDictionary)
            
            ClearView(enteredMorseCode: $enteredMorseCode, convertedText: $convertedText, savedText: $savedText)
            
            HStack {
                Text("Your Surname:")
                    .font(Font(UIFont.medium_22))
                Text(savedText)
                    .font(Font(UIFont.medium_22))
            }
            .padding()
            
            
            TextEditor(text: $enteredMorseCode)
                .font(Font(UIFont.medium_22))
                .disabled(true)
            
            
            HStack {
                Text("Your Morse Code")
                    .font(Font(UIFont.medium_22))
                Text(convertedText)
                    .padding()
                .font(Font(UIFont.medium_22))
            }
        }
        .padding()
    }
}

struct ButtonsView: View {
    @Binding var enteredMorseCode: String
    @Binding var convertedText: String
    @Binding var morseCodeDictionary: [String: String]
    
    var body: some View {
        HStack {
            Button(action: {
                enteredMorseCode += "."
                updateConvertedText()
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                        .frame(width: 70, height: 70)
                    Image(systemName: "moonphase.full.moon.inverse")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.white)
                }
            }
            
            Button(action: {
                enteredMorseCode += "-"
                updateConvertedText()
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color.black)
                        .frame(width: 70, height: 70)
                    Image(systemName: "minus")
                        .resizable()
                        .frame(width: 30, height: 5)
                        .foregroundColor(Color.white)
                }
            }
        }
    }
    
    func updateConvertedText() {
        let morseCodeArray = enteredMorseCode.split(separator: " ")
        var text = ""
        
        for morseCode in morseCodeArray {
            if let character = morseCodeDictionary[String(morseCode)] {
                text += character
            }
        }
        
        convertedText = text
    }
}

struct ConvertView: View {
    @Binding var enteredMorseCode: String
    @Binding var convertedText: String
    @Binding var savedText: String
    @Binding var morseCodeDictionary: [String: String]
    
    
    var body: some View {
        Button(action: {
            convertToText()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.black)
                    .frame(width: 150, height: 70)
                Text("Convert")
                    .foregroundColor(Color.white)
                    .font(Font(UIFont.medium_18))
            }
        }
    }
    
    func convertToText() {
        if let character = morseCodeDictionary[enteredMorseCode] {
            convertedText = character
            savedText += character
            enteredMorseCode = ""
        }
    }
}

struct ClearView: View {
    @Binding var enteredMorseCode: String
    @Binding var convertedText: String
    @Binding var savedText: String
    
    
    var body: some View {
        Button(action: {
            clearAll()
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color.red)
                    .frame(width: 150, height: 70)
                Text("Clear")
                    .foregroundColor(Color.white)
                    .font(Font(UIFont.medium_18))
            }
        }
    }
    
    func clearAll() {
        enteredMorseCode = ""
        convertedText = ""
        savedText = ""
    }
}


struct SurnameView_Previews: PreviewProvider {
    static var previews: some View {
        SurnameView()
    }
}
