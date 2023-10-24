//
//  ContentView.swift
//  Display a Number
//
//  Created by Fabiola on 9/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var numberTextField = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Display a Number")
                .font(.title).bold()
            TextField("Enter a Number", text: $numberTextField)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            .onChange(of: numberTextField) { newValue in
                    if let value = Int(newValue) {
                        if value % 2 == 0 {
                            imageName = "Even"
                        }
                        else {
                            imageName = "Odd"
                        }
                    }
                    else {
                        numberTextField = ""
                        imageName = ""
                    }
                }
            Text(numberTextField)
                .font(.title).bold()
            Image(imageName)
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
