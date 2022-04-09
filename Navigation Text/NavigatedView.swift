//
//  NavigatedView.swift
//  Navigation Text
//
//  Created by Matteo Spada on 31/03/22.
//

import SwiftUI


//SAREBBE L'EQUIVALENTE DI EDITVIEW IN ARIMEMO
struct NavigatedView: View {
    var body: some View {
        Text("Hi! This is the NavigatedView")
            .navigationBarTitle("NavigatedView")
    }
}


struct NavigatedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigatedView()
    }
}
