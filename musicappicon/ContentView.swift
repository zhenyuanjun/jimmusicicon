//
//  ContentView.swift
//  musicappicon
//
//  Created by 陳元浚 on 2020/10/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue])/*@END_MENU_TOKEN@*/, center: .center, startRadius: 10, endRadius: /*@START_MENU_TOKEN@*/500)
            ZStack{
                Group{
                    //外圓
                    Circle()
                        .trim(from:1/2,to: 1)
                        //.stroke(lineWidth: 4)
                        .scale(0.6)
                        .foregroundColor(.black)
                    Circle()
                        .trim(from:1/2,to: 1)
                        //.stroke(lineWidth: 4)
                        .scale(0.3)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:1/2,to: 1)
                        //.stroke(lineWidth: 4)
                        .scale(0.15)
                        .foregroundColor(.black)
                    //內線1
                    Circle()
                        .trim(from:1/2,to: 1.7/3)
                        .stroke(lineWidth: 2)
                        .scale(0.53)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:1/2,to: 1.7/3)
                        .stroke(lineWidth: 2)
                        .scale(0.45)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:1/2,to: 1.7/3)
                        .stroke(lineWidth: 2)
                        .scale(0.38)
                        .foregroundColor(.white)
                    //內線２
                    Circle()
                        .trim(from:2/3,to: 2.5/3)
                        .stroke(lineWidth: 2)
                        .scale(0.53)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:2/3,to: 2.5/3)
                        .stroke(lineWidth: 2)
                        .scale(0.45)
                        .foregroundColor(.white)
                }
                Group{
                    Circle()
                        .trim(from:2/3,to: 2.5/3)
                        .stroke(lineWidth: 2)
                        .scale(0.38)
                        .foregroundColor(.white)
                    //內線３
                    Circle()
                        .trim(from:2.8/3,to: 1)
                        .stroke(lineWidth: 2)
                        .scale(0.53)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:2.8/3,to: 1)
                        .stroke(lineWidth: 2)
                        .scale(0.45)
                        .foregroundColor(.white)
                    Circle()
                        .trim(from:2.8/3,to: 1)
                        .stroke(lineWidth: 2)
                        .scale(0.38)
                        .foregroundColor(.white)
                }
                ZStack {
                    LetterB()
                        .stroke(lineWidth: 15)
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .offset(x:-80)
                        .offset(y:45)
                    LetterE()
                        .stroke(lineWidth: 15)
                        .foregroundColor(.black)
                        .frame(width: 50, height: 50)
                        .offset(x:-20)
                        .offset(y:45)
                }
                    LetterT()
                    .stroke(lineWidth: 15)
                    .foregroundColor(.black)
                    .frame(width: 50, height: 50)
                    .offset(x:40)
                    .offset(y:45)
                    BadgeSymbol()
                        .frame(width: 60, height: 60)
                        .offset(x:30)
                        .offset(y:55)
            }
            .scaleEffect(1.5)
        }
        .scaleEffect(1)
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width:400, height: 400)
            
    }
}
struct LetterB: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.size.width/2, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.size.width/2))
            path.addLine(to: CGPoint(x: rect.size.width/2, y: rect.size.width/2))
            path.move(to: CGPoint(x: 0, y: rect.size.width/2))
            path.addLine(to: CGPoint(x: 0, y: rect.size.width))
            path.addLine(to: CGPoint(x: rect.size.width/2, y: rect.size.width))
            path.addArc(center: CGPoint(x: rect.size.width/2, y: rect.size.width*(3/4)), radius: rect.size.width/4, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
            path.addArc(center: CGPoint(x: rect.size.width/2, y: rect.size.width/4), radius: rect.size.width/4, startAngle: .degrees(90), endAngle: .degrees(270), clockwise: true)
        }
    }
}
struct LetterE: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.size.width/1.5, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: 0, y: rect.size.width/2))
            path.addLine(to: CGPoint(x: rect.size.width/1.5, y: rect.size.width/2))
            path.move(to: CGPoint(x: 0, y: rect.size.width/2))
            path.addLine(to: CGPoint(x: 0, y: rect.size.width))
            path.addLine(to: CGPoint(x: rect.size.width/1.5, y: rect.size.width))
        }
    }
}

struct LetterT: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.size.width/1.25, y: 0))
            path.addLine(to: CGPoint(x: 100, y: 0))
            path.move(to: CGPoint(x: 70, y: rect.size.width/30))
            path.addLine(to: CGPoint(x: 70, y: rect.size.width/0.87))
        }
    }
}
struct BadgeSymbol: View {
    static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width / 2
                let topWidth = 0.226 * width
                let topHeight = 0.488 * height
                
                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: spacing)
                ])
                
                path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                path.addLines([
                    CGPoint(x: middle - topWidth, y: topHeight + spacing),
                    CGPoint(x: spacing, y: height - spacing),
                    CGPoint(x: width - spacing, y: height - spacing),
                    CGPoint(x: middle + topWidth, y: topHeight + spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
            .fill(Self.symbolColor)
        }
    }
}

