//
//  MyDesign.swift
//  MyProject
//
//  Designed in DetailsPro
//  Copyright © (My Organization). All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Divider()
                Spacer()
                    .frame(height: 30)
                    .clipped()
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .fill(.primary)
                    .overlay {
                        Image("testImage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .mask { RoundedRectangle(cornerRadius: 4, style: .continuous) }
                        .padding(30)
                        .background {
                            Group {
                            
                        }
                        }
                    }
                    .frame(width: 350, height: 350)
                    .clipped()
                Divider()
                HStack {
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                    Image(systemName: "a.square")
                        .imageScale(.large)
                }
                Divider()
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                    .clipped()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
