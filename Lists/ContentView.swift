//
//  ContentView.swift
//  Lists
//
//  Created by Montrel D. Young on 11/15/23.


import SwiftUI
import SwiftData

struct ContentView: View {
    var sushiImages = ["onigiri", "meguro-sushi", "avocado-maki", "tobiko-spicy-maki", "salmon-sushi",
                       "hamachi- sushi","kani-sushi",  ]
    var menuItems = [Menu(name: "Onigiri", image: "onigiri"), Menu(name:"Meguro Sushi", image: "meguro-sushi"), Menu(name: "Tako Sushi", image: "tako-sushi"),Menu(name: "Avocado Maki", image: "avocado-maki"), Menu(name: "Tobiko Spicy Maki", image: "tobiko-spicy-maki"), Menu(name: "Salmon Sushi", image: "salmon-sushi"), Menu(name: "Hamachi Sushi", image: "hamachi-sushi"), Menu(name: "Kani Sushi", image: "kani-sushi"), Menu(name: "Tamago Sushi", image: "tamago-sushi"), Menu(name: "California Roll", image: "california-roll"), Menu(name:"Shrimp Sushi", image: "shrimp-sushi"), Menu(name: "Ikura Sushi", image: "ikura-sushi")
                     
                     
    ]
    var body: some View {
        List(menuItems) { sushi in
            FullImageRow(sushi: sushi)
            
            HStack
            Image(sushiImages[index])
                .resizable
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(menuItems.name)
            
        }
    }
        .listStyle(.plain)
 }
}
struct Menu: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
}
#Preview {
    ContentView()
    
}

struct BasicImageRow: View {
    var sushi: Menu
    var body: some view {
        HStack {
            Image(sushi.image)
                .resizable()
        }
        }
    }
    
struct FullImageRow: View {
    var sushi: Menu
    var body: some View {
        ZStack {
            Image(sushi.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                Rectangle()
                    .foregroundStyle(.black)
                    .cornerRadius(10)
                    .opacity(0.2)
                
                Text(sushi.name)
        }
    }
