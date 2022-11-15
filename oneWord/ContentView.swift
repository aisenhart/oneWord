
//
//  loginPage.swift
//  oneWord
//
//  Created by Andrew Isenhart on 11/13/22.
//

import SwiftUI

struct ContentView: View {
    //properties
    var word: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .frame(height: 300)
                    .clipped()
                    .foregroundColor(Color(.secondarySystemFill))
                    .overlay { Image("stickHanging")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                        
                    }
                
                Text(generateWord())
                    .font(.largeTitle.weight(.medium))
                Text("Let's get started.")
                    .font(.title2.weight(.medium))
                    .foregroundColor(.secondary)
            }
            .padding()
        }
    }
    
    
    
    
    
    
    func generateWord() -> String {
        let wordList = ["Hello", "World", "Swift", "iOS", "Xcode", "Mac", "Apple", "iPhone", "iPad", "MacBook", "MacBook Pro"]
        let randomIndex = Int.random(in: 0..<wordList.count)
        return wordList[randomIndex]
    }
    
}









struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}











