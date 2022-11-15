//
//  loginPage.swift
//  oneWord
//
//  Created by Andrew Isenhart on 11/13/22.
// This is a test

import SwiftUI

struct loginPage: View {
    @State var isModal: Bool = false
    
    var body: some View {
        VStack {
            Image("stickSitting")
                .renderingMode(.original)
                .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0), resizingMode: .tile)
                .aspectRatio(contentMode: .fill)
                .frame(width: 356.0, height: 480)
                .clipped()
                .overlay(alignment: .topLeading) {
                    VStack(alignment: .leading, spacing: 11) {
                        RoundedRectangle(cornerRadius: 17, style: .continuous)
                            .fill(.white)
                            .frame(width: 72, height: 72)
                            .clipped()
                            .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.12), radius: 8, x: 0, y: 4)
                            .overlay {
                                Image("stickFigure")
                                    .renderingMode(.original)
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fit)
                                    .imageScale(.small)
                                    .font(.system(size: 31, weight: .regular, design: .default))
                            }
                        VStack(alignment: .leading, spacing: 1) {
                            Text("OneWord")
                                .font(.largeTitle.weight(.medium))
                            Text("Can you guess the word?")
                                .font(.headline.weight(.medium))
                                .frame(width: 200, alignment: .leading)
                                .clipped()
                                .multilineTextAlignment(.leading)
                        }
                    }
                    .padding(.all)
                    .padding(.top, 42)
                }
                .overlay(alignment: .bottom) {
                    HStack {
                        Group {
                            Spacer()
                            Image(systemName: "person")
                                .foregroundColor(.red)
                            Spacer()
                            Image(systemName: "person.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Image(systemName: "person")
                                .foregroundColor(.red)
                            Spacer()
                            Image(systemName: "person.fill")
                                .foregroundColor(.green)
                            Spacer()
                            Image(systemName: "person")
                                .imageScale(.medium)
                                .foregroundColor(.red)
                        }
                        Group {
                            Spacer()
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .clipped()
                    .padding()
                    .background {
                        Rectangle()
                            .fill(.clear)
                            .background(Material.thin)
                            .mask {
                                RoundedRectangle(cornerRadius: 12, style: .continuous)
                            }
                    }
                    .padding()
                }
                .mask {
                    RoundedRectangle(cornerRadius: 24, style: .continuous)
                }
                .padding()
                .padding(.top, 40.0)
                .shadow(color: Color(.sRGBLinear, red: 0/255, green: 0/255, blue: 0/255).opacity(0.15), radius: 18, x: 0, y: 14)
            VStack(spacing: 10) {
                HStack(alignment: .firstTextBaseline) {
                    Image(systemName: "exclamationmark.circle")
                        .imageScale(.medium)
                    Text("This is a work in progress. Report any issues. Thank you for your support.")
                }
                .font(.body.weight(.medium))
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .clipped()
                .foregroundColor(Color(.displayP3, red: 244/255, green: 188/255, blue: 73/255))
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(.clear.opacity(0.25), lineWidth: 0)
                        .background(RoundedRectangle(cornerRadius: 10, style: .continuous).fill(.yellow.opacity(0.1)))
                        .padding(0)
                }
                HStack(alignment: .firstTextBaseline, spacing: 6) {
                    Image(systemName: "applelogo")
                        .imageScale(.medium)
                    Text("Continue with Apple")
                }
                .font(.body.weight(.medium))
                .padding(.vertical, 16)
                .frame(maxWidth: .infinity)
                .clipped()
                .foregroundColor(Color(.systemBackground))
                .background {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(.primary)
                }
            }
            .padding(.horizontal)

            Button(action: {
                self.isModal = true
            }) {
                Text("Continue as guest")
            }
            .sheet(isPresented: $isModal) {
                ContentView()
            }
        }
    }
}





struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}



