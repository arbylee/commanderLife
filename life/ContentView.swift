//
//  ContentView.swift
//  life
//
//  Created by Richard on 8/9/24.
//

import SwiftUI

struct ContentView: View {
    @State
    private var redLife = 40
    @State
    private var blueLife = 40
    @State
    private var blueCommanderDamageColor = "red"
    @State
    private var blueRedCommanderDamage = 0
    @State
    private var blueGreenCommanderDamage = 0
    @State
    private var blueYellowCommanderDamage = 0
    func blueRedCommanderDamageUp() {
        blueRedCommanderDamage += 1
    }
    func blueRedCommanderDamageDown() {
        blueRedCommanderDamage -= 1
    }
    var body: some View {
        VStack {
            HStack {
                HStack {
                    ZStack {
                        Color(.red)
                        HStack{
                            Button(action: redLifeDown, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)

                            })
//                            .background(Color.red)
//                            .buttonStyle(.borderedProminent)
//                            .padding()
//                            .rotationEffect(Angle(degrees: 0))
                            Button(action: redLifeUp, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            })
//                            .cornerRadius(6)
//                            .buttonStyle(.borderedProminent)
//                            .rotationEffect(Angle(degrees: 0))
//                            .padding()
                        }
                        VLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
//                        Line()
//                                   .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
//                                   .frame(height: 1)
                        GeometryReader { geometry in
                            Path {
                                path in
                                let width = geometry.size.width
                                let height = geometry.size.height
                                path.addLines([
                                    CGPoint(x: width * 0.35, y: height * 0.4),
                                    CGPoint(x: width * 0.35, y: height * 0.6),
                                    CGPoint(x: width * 0.65, y: height * 0.6),
                                    CGPoint(x: width * 0.65, y: height * 0.4),
                                ])
                                path.closeSubpath()
                            }.fill(Color(red: 255 / 255, green: 200 / 255, blue: 200 / 255))
//                                .stroke(.black, lineWidth: 20)
                                .stroke(.black, style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                        }
                        Text(String(redLife))
                            .rotationEffect(Angle(degrees: 90))
                            .foregroundStyle(.black)
                    }
                }
                HStack {
                    ZStack {
                        Color(.green)
                    }
                }
            }
            HStack {
                GeometryReader { blueGp in
                    HStack {
                        ZStack {
                            Color(.blue)
                            HStack{
                                Button(action: blueLifeDown, label: {
                                    Text("")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                    
                                })
                                //                            .background(Color.red)
                                //                            .buttonStyle(.borderedProminent)
                                //                            .padding()
                                //                            .rotationEffect(Angle(degrees: 0))
                                Button(action: blueLifeUp, label: {
                                    Text("")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                })
                                //                            .cornerRadius(6)
                                //                            .buttonStyle(.borderedProminent)
                                //                            .rotationEffect(Angle(degrees: 0))
                                //                            .padding()
                            }
                            //                        Line()
                            //                                   .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                            //                                   .frame(height: 1)
                            HStack{
                                Button(action: blueRedCommanderDamageDown, label: {
                                    Text("")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                })
                                //                            .background(Color.red)
                                //                            .buttonStyle(.borderedProminent)
                                //                            .padding()
                                //                            .rotationEffect(Angle(degrees: 0))
                                Button(action: blueRedCommanderDamageUp, label: {
                                    Text("")
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                })
                                //                            .cornerRadius(6)
                                //                            .buttonStyle(.borderedProminent)
                                //                            .rotationEffect(Angle(degrees: 0))
                                //                            .padding()
                            }.frame(maxHeight: blueGp.size.height / 3)
                                .background(.red)
                                .offset(y: blueGp.size.height/3)
                            
                            VLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))

                            ZStack {
                                GeometryReader { geometry in
                                    Path {
                                        path in
                                        let width = geometry.size.width
                                        let height = geometry.size.height
                                        path.addLines([
                                            CGPoint(x: width * 0.35, y: height * 0.4),
                                            CGPoint(x: width * 0.35, y: height * 0.6),
                                            CGPoint(x: width * 0.65, y: height * 0.6),
                                            CGPoint(x: width * 0.65, y: height * 0.4),
                                        ])
                                        path.closeSubpath()
                                    }.fill(Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255))
                                    //                                .stroke(.black, lineWidth: 20)
                                        .stroke(.black, style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                                }
                                Text(String(blueRedCommanderDamage))
                                //                                .offset(x: -120)
                                    .rotationEffect(Angle(degrees: 90))
                                    .foregroundStyle(.white)
                            }.offset(y: blueGp.size.height/3)
                            ZStack {
                                GeometryReader { geometry in
                                    Path {
                                        path in
                                        let width = geometry.size.width
                                        let height = geometry.size.height
                                        path.addLines([
                                            CGPoint(x: width * 0.35, y: height * 0.4),
                                            CGPoint(x: width * 0.35, y: height * 0.6),
                                            CGPoint(x: width * 0.65, y: height * 0.6),
                                            CGPoint(x: width * 0.65, y: height * 0.4),
                                        ])
                                        path.closeSubpath()
                                    }.fill(Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255))
                                    //                                .stroke(.black, lineWidth: 20)
                                        .stroke(.black, style: StrokeStyle(lineWidth: 6, lineCap: .round, lineJoin: .round))
                                }
                                Text(String(blueLife))
                                //                                .offset(x: -120)
                                    .rotationEffect(Angle(degrees: 90))
                                    .foregroundStyle(.white)
                            }.offset(y: -blueGp.size.height/6)
//                            BlueRedDamage

                        }
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
    func redLifeUp() {
        redLife += 1
    }
    func redLifeDown() {
        redLife -= 1
    }
    func blueLifeUp() {
        blueLife += 1
    }
    func blueLifeDown() {
        blueLife -= 1
    }
    func blueGreenCommanderDamageUp() {
        blueGreenCommanderDamage += 1
    }
    func blueYellowCommanderDamageUp() {
        blueYellowCommanderDamage += 1
    }
    func blueGreenCommanderDamageDown() {
        blueGreenCommanderDamage -= 1
    }
    func blueYellowCommanderDamageDown() {
        blueYellowCommanderDamage -= 1
    }
}

//struct BlueRedDamage : View {
//    
//    @Binding var blueCommanderDamageColor: String
//    @Binding var blueRedCommanderDamage: Int
//    @Binding var blueGpSize: CGSize
////    init(gpSize: CGSize, blueRedCommanderDamage: Int, blueCommanderDamageColor: String) {
////        self.blueRedCommanderDamage = 1
////        self.blueCommanderDamageColor = "asdf"
////        self.blueGpSize = blueGpSize
////    }
////    var body : some View {
////        
////    }
//}
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.height, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct VLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        }
    }
}

#Preview {
    ContentView()
}
