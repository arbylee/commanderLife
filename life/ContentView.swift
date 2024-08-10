//
//  ContentView.swift
//  life
//
//  Created by Richard on 8/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                HStack {
                    ZStack {
                        Color(.red)
                        HStack{
                            Button(action: greeting, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                            })
                            .buttonStyle(.borderedProminent)
//                            .padding()
//                            .rotationEffect(Angle(degrees: 0))
                            Button(action: greeting, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            })
                            .buttonStyle(.borderedProminent)
//                            .rotationEffect(Angle(degrees: 0))
//                            .padding()
                        }
                    }
                }
                HStack {
                    ZStack {
                        Color(.green)
                    }
                }
            }
            HStack {
                HStack {
                    ZStack {
                        Color(.blue)
                    }
                }
                HStack {
                    ZStack {
                        Color(.yellow)
                    }
                }
            }
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
        }
        .padding()
    }
    func greeting() {
        print("Hello, World!")
    }
}

#Preview {
    ContentView()
}
