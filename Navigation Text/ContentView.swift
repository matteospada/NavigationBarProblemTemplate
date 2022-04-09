//
//  ContentView.swift
//  Navigation Text
//
//  Created by Matteo Spada on 31/03/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var tabSelection: Tabs = .tab1
    
    
    
    var body: some View {
        NavigationView{
            TabView(selection: $tabSelection) {
                List{
                    ForEach(1...100, id: \.self) { index in
                        NavigationLink(destination: NavigatedView()){
                            Text("This the number \(index)")
                        }
                    }
                    
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    
                }
                
                .tag(Tabs.tab1)
                VStack{
                    Form {
                        Text("HELLO")
                        
                        Text("HELLO2")
                        
                    }
                    
                }
                .tabItem {
                    Image(systemName: "gearshape.fill").foregroundColor(.red)
                }
                .tag(Tabs.tab2)
            }
            .accentColor(.black)
            .navigationBarTitle(returnNaviBarTitle(tabSelection: self.tabSelection))
            .navigationBarTitleDisplayMode(tabSelection == .tab1 ? .automatic : .inline)
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    if tabSelection == .tab1 {
                        Button("Plus") {
                            print("Plus Button")
                        }.foregroundColor(.red)
                    }
                    
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    if tabSelection == .tab1 {
                        Button("Edit") {
                            print("Edit Button")
                        }.foregroundColor(.red)
                    }
                }
            }
            
        }
        
    }
    
    enum Tabs{
        case tab1, tab2
    }
    
    func returnNaviBarTitle(tabSelection: Tabs) -> String{//this function will return the correct NavigationBarTitle when different tab is selected.
        switch tabSelection{
        case .tab1: return "Memos"
        case .tab2: return "Settings"
        }
    }
}

