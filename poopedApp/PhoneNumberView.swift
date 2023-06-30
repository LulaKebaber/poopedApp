//
//  PhoneNumberView.swift
//  poopedApp
//
//  Created by Danial Baizak on 30.06.2023.
//

import SwiftUI

import SwiftUI

struct PhoneNumberView: View {
    struct Country {
        let name: String
        let code: String
    }
    
    let countries = [
        Country(name: "🇦🇫", code: "+93"),
        Country(name: "🇦🇱", code: "+355"),
        Country(name: "🇩🇿", code: "+213"),
        Country(name: "🇦🇩", code: "+376"),
        Country(name: "🇦🇴", code: "+244"),
        Country(name: "🇦🇬", code: "+1"),
        Country(name: "🇦🇷", code: "+54"),
        Country(name: "🇦🇲", code: "+374"),
        Country(name: "🇦🇺", code: "+61"),
        Country(name: "🇦🇹", code: "+43"),
        Country(name: "🇦🇿", code: "+994"),
        Country(name: "🇧🇸", code: "+1"),
        Country(name: "🇧🇭", code: "+973"),
        Country(name: "🇧🇩", code: "+880"),
        Country(name: "🇧🇧", code: "+1"),
        Country(name: "🇧🇾", code: "+375"),
        Country(name: "🇧🇪", code: "+32"),
        Country(name: "🇧🇿", code: "+501"),
        Country(name: "🇧🇯", code: "+229"),
        Country(name: "🇧🇹", code: "+975"),
        Country(name: "🇧🇴", code: "+591"),
        Country(name: "🇧🇦", code: "+387"),
        Country(name: "🇧🇼", code: "+267"),
        Country(name: "🇧🇷", code: "+55"),
        Country(name: "🇧🇳", code: "+673"),
        Country(name: "🇧🇬", code: "+359"),
        Country(name: "🇧🇫", code: "+226"),
        Country(name: "🇧🇮", code: "+257"),
        Country(name: "🇰🇭", code: "+855"),
        Country(name: "🇨🇲", code: "+237"),
        Country(name: "🇨🇦", code: "+1"),
        Country(name: "🇨🇻", code: "+238"),
        Country(name: "🇨🇫", code: "+236"),
        Country(name: "🇹🇩", code: "+235"),
        Country(name: "🇨🇱", code: "+56"),
        Country(name: "🇨🇳", code: "+86"),
        Country(name: "🇨🇴", code: "+57"),
        Country(name: "🇰🇲", code: "+269"),
        Country(name: "🇨🇬", code: "+242"),
        Country(name: "🇨🇷", code: "+506"),
        Country(name: "🇭🇷", code: "+385"),
        Country(name: "🇨🇺", code: "+53"),
        Country(name: "🇨🇺", code: "+53"),
        Country(name: "🇨🇾", code: "+357"),
        Country(name: "🇨🇿", code: "+420"),
        Country(name: "🇨🇮", code: "+225"),
        Country(name: "🇩🇰", code: "+45"),
        Country(name: "🇩🇯", code: "+253"),
        Country(name: "🇩🇲", code: "+1"),
        Country(name: "🇩🇴", code: "+1"),
        Country(name: "🇪🇨", code: "+593"),
        Country(name: "🇪🇬", code: "+20"),
        Country(name: "🇸🇻", code: "+503"),
        Country(name: "🇬🇶", code: "+240"),
        Country(name: "🇪🇷", code: "+291"),
        Country(name: "🇪🇪", code: "+372"),
        Country(name: "🇪🇹", code: "+251"),
        Country(name: "🇫🇴", code: "+298"),
        Country(name: "🇫🇯", code: "+679"),
        Country(name: "🇫🇮", code: "+358"),
        Country(name: "🇫🇷", code: "+33"),
        Country(name: "🇬🇦", code: "+241"),
        Country(name: "🇬🇲", code: "+220"),
        Country(name: "🇬🇪", code: "+995"),
        Country(name: "🇩🇪", code: "+49"),
        Country(name: "🇬🇭", code: "+233"),
        Country(name: "🇬🇷", code: "+30"),
        Country(name: "🇬🇱", code: "+299"),
        Country(name: "🇬🇩", code: "+1"),
        Country(name: "🇬🇹", code: "+502"),
        Country(name: "🇬🇼", code: "+245"),
        Country(name: "🇬🇾", code: "+592"),
        Country(name: "🇭🇹", code: "+509"),
        Country(name: "🇭🇳", code: "+504"),
        Country(name: "🇭🇰", code: "+852"),
        Country(name: "🇭🇺", code: "+36"),
        Country(name: "🇮🇸", code: "+354"),
        Country(name: "🇮🇳", code: "+91"),
        Country(name: "🇮🇩", code: "+62"),
        Country(name: "🇮🇷", code: "+98"),
        Country(name: "🇮🇶", code: "+964"),
        Country(name: "🇮🇪", code: "+353"),
        Country(name: "🇮🇱", code: "+972"),
        Country(name: "🇮🇹", code: "+39"),
        Country(name: "🇯🇲", code: "+1"),
        Country(name: "🇯🇵", code: "+81"),
        Country(name: "🇯🇴", code: "+962"),
        Country(name: "🇰🇿", code: "+7"),
        Country(name: "🇰🇪", code: "+254"),
        Country(name: "🇰🇮", code: "+686"),
        Country(name: "🇽🇰", code: "+383"),
        Country(name: "🇰🇼", code: "+965"),
        Country(name: "🇰🇬", code: "+996"),
        Country(name: "🇱🇦", code: "+856"),
        Country(name: "🇱🇻", code: "+371"),
        Country(name: "🇱🇧", code: "+961"),
        Country(name: "🇱🇸", code: "+266"),
        Country(name: "🇱🇷", code: "+231"),
        Country(name: "🇱🇾", code: "+218"),
        Country(name: "🇱🇮", code: "+423"),
        Country(name: "🇱🇹", code: "+370"),
        Country(name: "🇱🇺", code: "+352"),
        Country(name: "🇲🇴", code: "+853"),
        Country(name: "🇲🇰", code: "+389"),
        Country(name: "🇲🇬", code: "+261"),
        Country(name: "🇲🇼", code: "+265"),
        Country(name: "🇲🇾", code: "+60"),
        Country(name: "🇲🇻", code: "+960"),
        Country(name: "🇲🇱", code: "+223"),
        Country(name: "🇲🇹", code: "+356"),
        Country(name: "🇲🇭", code: "+692"),
        Country(name: "🇲🇶", code: "+596"),
        Country(name: "🇲🇷", code: "+222"),
        Country(name: "🇲🇺", code: "+230"),
        Country(name: "🇲🇽", code: "+52"),
        Country(name: "🇫🇲", code: "+691"),
        Country(name: "🇲🇩", code: "+373"),
        Country(name: "🇲🇨", code: "+377"),
        Country(name: "🇲🇳", code: "+976"),
        Country(name: "🇲🇪", code: "+382"),
        Country(name: "🇲🇦", code: "+212"),
        Country(name: "🇲🇿", code: "+258"),
        Country(name: "🇲🇲", code: "+95"),
        Country(name: "🇳🇦", code: "+264"),
        Country(name: "🇳🇷", code: "+674"),
        Country(name: "🇳🇵", code: "+977"),
        Country(name: "🇳🇱", code: "+31"),
        Country(name: "🇳🇨", code: "+687"),
        Country(name: "🇳🇿", code: "+64"),
        Country(name: "🇳🇮", code: "+505"),
        Country(name: "🇳🇪", code: "+227"),
        Country(name: "🇳🇬", code: "+234"),
        Country(name: "🇳🇺", code: "+683"),
        Country(name: "🇰🇵", code: "+850"),
        Country(name: "🇳🇴", code: "+47"),
        Country(name: "🇴🇲", code: "+968"),
        Country(name: "🇵🇰", code: "+92"),
        Country(name: "🇵🇼", code: "+680"),
        Country(name: "🇵🇸", code: "+970"),
        Country(name: "🇵🇦", code: "+507"),
        Country(name: "🇵🇬", code: "+675"),
        Country(name: "🇵🇾", code: "+595"),
        Country(name: "🇵🇪", code: "+51"),
        Country(name: "🇵🇭", code: "+63"),
        Country(name: "🇵🇳", code: "+64"),
        Country(name: "🇵🇱", code: "+48"),
        Country(name: "🇵🇹", code: "+351"),
        Country(name: "🇶🇦", code: "+974"),
        Country(name: "🇷🇴", code: "+40"),
        Country(name: "🇷🇺", code: "+7"),
        Country(name: "🇷🇼", code: "+250"),
        Country(name: "🇼🇸", code: "+685"),
        Country(name: "🇸🇲", code: "+378"),
        Country(name: "🇸🇦", code: "+966"),
        Country(name: "🇸🇳", code: "+221"),
        Country(name: "🇷🇸", code: "+381"),
        Country(name: "🇸🇨", code: "+248"),
        Country(name: "🇸🇱", code: "+232"),
        Country(name: "🇸🇬", code: "+65"),
        Country(name: "🇸🇽", code: "+1"),
        Country(name: "🇸🇰", code: "+421"),
        Country(name: "🇸🇮", code: "+386"),
        Country(name: "🇬🇸", code: "+500"),
        Country(name: "🇸🇧", code: "+677"),
        Country(name: "🇸🇴", code: "+252"),
        Country(name: "🇿🇦", code: "+27"),
        Country(name: "🇰🇷", code: "+82"),
        Country(name: "🇸🇸", code: "+211"),
        Country(name: "🇪🇸", code: "+34"),
        Country(name: "🇱🇰", code: "+94"),
        Country(name: "🇸🇩", code: "+249"),
        Country(name: "🇸🇷", code: "+597"),
        Country(name: "🇸🇿", code: "+268"),
        Country(name: "🇸🇪", code: "+46"),
        Country(name: "🇨🇭", code: "+41"),
        Country(name: "🇸🇾", code: "+963"),
        Country(name: "🇹🇼", code: "+886"),
        Country(name: "🇹🇯", code: "+992"),
        Country(name: "🇹🇿", code: "+255"),
        Country(name: "🇹🇭", code: "+66"),
        Country(name: "🇹🇬", code: "+228"),
        Country(name: "🇹🇰", code: "+690"),
        Country(name: "🇹🇴", code: "+676"),
        Country(name: "🇹🇹", code: "+1"),
        Country(name: "🇹🇳", code: "+216"),
        Country(name: "🇹🇷", code: "+90"),
        Country(name: "🇹🇲", code: "+993"),
        Country(name: "🇹🇨", code: "+1"),
        Country(name: "🇹🇻", code: "+688"),
        Country(name: "🇻🇮", code: "+1"),
        Country(name: "🇺🇬", code: "+256"),
        Country(name: "🇺🇦", code: "+380"),
        Country(name: "🇦🇪", code: "+971"),
        Country(name: "🇬🇧", code: "+44"),
        Country(name: "🇺🇸", code: "+1"),
        Country(name: "🇺🇾", code: "+598"),
        Country(name: "🇺🇿", code: "+998"),
        Country(name: "🇻🇺", code: "+678"),
        Country(name: "🇻🇦", code: "+379"),
        Country(name: "🇻🇪", code: "+58"),
        Country(name: "🇻🇳", code: "+84"),
        Country(name: "🇼🇫", code: "+681"),
        Country(name: "🇪🇭", code: "+681"),
        Country(name: "🇾🇪", code: "+967"),
        Country(name: "🇿🇲", code: "+260"),
        Country(name: "🇿🇼", code: "+263")
    ]
    
    @State private var selectedCountryIndex = 0
    @State var enteredDigits: [String] = []
    @State var shuffledDigits = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    
    var body: some View {
        VStack {
            Text("Entered Phone Number:")
                .font(Font(UIFont.medium_26))
            
            HStack {
                Text("Country Code: \(countries[selectedCountryIndex].code)")
                    .font(Font(UIFont.medium_22))
            }
            
            HStack {
                ForEach(enteredDigits.indices, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 25, height: 25)
                        .overlay(Text(hiddenNumber(index)).foregroundColor(.white))
                }
            }
            
            Spacer()
            
            AddNumbersButtonsView(enteredDigits: $enteredDigits, shuffledDigits: $shuffledDigits)
            
            
            Picker("Select Country", selection: $selectedCountryIndex) {
                ForEach(0..<countries.count, id: \.self) { index in
                    Text(countries[index].name).tag(index)
                }
            }
            .pickerStyle(.wheel)
            .labelsHidden()
            .padding()
            
        }
    }
    
    func hiddenNumber(_ index: Int) -> String {
        if index < enteredDigits.count {
            return enteredDigits[index]
        } else {
            return ""
        }
    }
}

struct AddNumbersButtonsView: View {
    @Binding var enteredDigits: [String]
    @Binding var shuffledDigits: [String]
    
    var body: some View {
        VStack {
            ForEach(0..<3) { row in
                HStack {
                    ForEach(0..<3) { column in
                        Button(action: {
                            addDigit(shuffledDigits[row * 3 + column])
                        }) {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 80, height: 80)
                                .foregroundColor(Color.black)
                                .overlay(Text(shuffledDigits[row * 3 + column])
                                    .foregroundColor(Color.black))
                        }
                    }
                }
            }
        }
    }
    
    func addDigit(_ digit: String) {
        enteredDigits.append(digit)
        shuffledDigits.shuffle()
    }
}

struct PhoneNumberView_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNumberView()
    }
}
