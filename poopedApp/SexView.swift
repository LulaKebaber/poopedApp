import SwiftUI

struct SexView: View {
    @State private var wearsSocksWithSandals: Bool = false
    @State private var mistakenHairdryerForMicrophone: Bool = false
    @State private var fixesWithHammer: Bool = false
    @State private var findsTVRemote: Bool = false
    @State private var hadConversationWithHouseplant: Bool = false
    @State private var result: String = ""
    
    var body: some View {
        VStack {
            Text("Please answer the following questions:")
                .font(.title)
                .padding()
            
            VStack {
                Text("Socks with sandals?")
                    .font(.headline)
                    .padding()
                
                Toggle("Yes", isOn: $wearsSocksWithSandals)
            }
            
            VStack {
                Text("Mic or hairdryer?")
                    .font(.headline)
                    .padding()
                
                Toggle("Yes", isOn: $mistakenHairdryerForMicrophone)
            }
            
            VStack {
                Text("Hammer as a fix?")
                    .font(.headline)
                    .padding()
                
                Toggle("Yes", isOn: $fixesWithHammer)
            }
            
            VStack {
                Text("Remote finding skills?")
                    .font(.headline)
                    .padding()
                
                Toggle("No", isOn: $findsTVRemote)
            }
            
            VStack {
                Text("Conversations with houseplants?")
                    .font(.headline)
                    .padding()
                
                Toggle("No", isOn: $hadConversationWithHouseplant)
            }
            
            Button(action: determineSex) {
                Text("Submit")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding()
            
            Text(result)
                .font(.headline)
                .foregroundColor(.red)
                .padding()
        }
    }
    
    func determineSex() {
        // Perform necessary actions to determine the user's sex based on the answers
        
        // Example logic:
        let yesCount = [wearsSocksWithSandals, mistakenHairdryerForMicrophone, fixesWithHammer, findsTVRemote, hadConversationWithHouseplant].filter({ $0 }).count
        
        if yesCount >= 3 {
            result = "The algorithm determines you are Male."
        } else {
            result = "The algorithm determines you are Female."
        }
    }
}

struct SexView_Previews: PreviewProvider {
    static var previews: some View {
        SexView()
    }
}
