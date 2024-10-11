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
    private var greenLife = 40
    @State
    private var blueLife = 40
    @State
    private var yellowLife = 40
    @State
    private var blueCommanderDamageColor = Color(.red)
    @State
    private var blueRedCommanderDamage = 0
    @State
    private var blueGreenCommanderDamage = 0
    @State
    private var blueYellowCommanderDamage = 0
    
    init() {
        var blueCommander: [AnyHashable: Any] = ["life": 40, "oppColor": Color(.red)]
        var commanders: [AnyHashable: Any] = [Color(.blue): blueCommander]
        self.commanders = commanders
    }

    func changeCDC(commColor: Color, oppColor: Color) {
        if commColor == Color(.blue) {
            
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                CommanderLife(life: $redLife, color: .red)
                CommanderLife(life: $greenLife, color: .green)
            }
            HStack {
                CommanderLifeAndDamage(changeCommanderDamageColor: changeCDC, life: $blueLife, color: .blue, oppColor: blueCommanderDamageColor, damage: $blueRedCommanderDamage)
                CommanderLife(life: $yellowLife, color: .yellow)
            }
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
        }
        .padding()
    }
    func blueLifeUp() {
        blueLife += 1
    }
    func blueLifeDown() {
        blueLife -= 1
    }
}

struct CommanderLifeAndDamage : View {
    var changeCommanderDamageColor: (Color, Color) -> ()
    @Binding var life: Int
    var color: Color
    var oppColor: Color
    @Binding var damage: Int
    
    func lifeUp() {
        life += 1
    }
    func lifeDown() {
        life -= 1
    }
    func damageUp() {
        damage += 1
    }
    func damageDown() {
        damage -= 1
    }

    var body : some View {
            GeometryReader { blueGp in
                HStack {
                    ZStack {
                        Color(.blue)
                        HStack{
                            Button(action: lifeDown, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                                
                            })
                            //                            .background(Color.red)
                            //                            .buttonStyle(.borderedProminent)
                            //                            .padding()
                            //                            .rotationEffect(Angle(degrees: 0))
                            Button(action: lifeUp, label: {
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
                            Button(action: damageDown, label: {
                                Text("")
                                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                            })
                            //                            .background(Color.red)
                            //                            .buttonStyle(.borderedProminent)
                            //                            .padding()
                            //                            .rotationEffect(Angle(degrees: 0))
                            Button(action: damageUp, label: {
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
                            Button(action: changeCommanderDamageColor, label: {
                                Text(String(damage))
                            })
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
                            Text(String(life))
                            //                                .offset(x: -120)
                                .rotationEffect(Angle(degrees: 90))
                                .foregroundStyle(.white)
                        }.offset(y: -blueGp.size.height/6)
                    }
                }
            }
    }
}

struct CommanderLife : View {
    func lifeUp() {
        life += 1
    }
    func lifeDown() {
        life -= 1
    }
    @Binding var life : Int
    var color : Color
    var body : some View {
        HStack {
            ZStack {
                Color(color)
                HStack{
                    Button(action: lifeDown, label: {
                        Text("")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)

                    })
//                            .background(Color.red)
//                            .buttonStyle(.borderedProminent)
//                            .padding()
//                            .rotationEffect(Angle(degrees: 0))
                    Button(action: lifeUp, label: {
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
                Text(String(life))
                    .rotationEffect(Angle(degrees: 90))
                    .foregroundStyle(.black)
            }
        }
    }
}
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
