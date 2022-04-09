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
		TabView(selection: $tabSelection) {
			NavigationView {
				List{
					ForEach(1...100, id: \.self) { index in
						NavigationLink(destination: NavigatedView()){
							Text("This the number \(index)")
						}
					}
					
				}
				.navigationBarTitle("Memos")
				.toolbar {
					ToolbarItem(placement: .navigationBarLeading) {
						Button("Edit") {
							print("Edit Button")
						}.foregroundColor(.red)
					}
					
					ToolbarItem(placement: .navigationBarTrailing) {
						Button("Plus") {
							print("Plus Button")
						}.foregroundColor(.red)
					}
				}
			}
			.tabItem {
				Image(systemName: "list.bullet")
			}
			.tag(Tabs.tab1)
			
			NavigationView {
				VStack {
					Form {
						Text("HELLO")
						
						Text("HELLO2")
						
					}
					
				}
				.navigationBarTitle("Settings")
			}
			.tabItem {
				Image(systemName: "gearshape.fill").foregroundColor(.red)
			}
			.tag(Tabs.tab2)
			
		}
		.accentColor(.black)
//		.navigationBarTitleDisplayMode(tabSelection == .tab1 ? .automatic : .inline)
		
	}
	
	enum Tabs{
		case tab1, tab2
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
