//
//  ContentView.swift
//  Lesson4AssignmentUCSDFutures
//
//  Created by Sandra Gomez on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.edgesIgnoringSafeArea(.all)
                VStack {
                    TextField("Type something here", text: $message)
                        .padding()
                        .textFieldStyle(.roundedBorder)
                    
                    NavigationLink(destination: SameFileView(passedData: message)) {
                        Text("Second View")
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .foregroundColor(.blue)
                    }
                    .padding(.top)
                }
                .padding()
            }
        }
    }
}

struct SameFileView: View {
    var passedData: String
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            Text("This is what you typed: \(passedData)")
                .foregroundColor(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
