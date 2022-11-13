//
//  ContentView.swift
//  oneWord
//
//  Created by Andrew Isenhart on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
   
        ZStack {
            VStack {
            Image("testImage").resizable().aspectRatio(contentMode: .fit).padding(.all)
            
                Text("Hi")
                TextField("Enter Guess Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding(.all, 10.0)
                    .background(Color.gray)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                    
            
        }
        
        }
       
        
        
  
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
