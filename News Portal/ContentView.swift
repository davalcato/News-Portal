//
//  ContentView.swift
//  News Portal
//
//  Created by Daval Cato on 5/18/20.
//  Copyright © 2020 Daval Cato. All rights reserved.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct dataType : Identifiable {
    
    var id : String
    var title : String
    var desc : String
    var url : String
    var image : String
    
}

class getDate : ObservedObject{
    
    @Published var datas = [dataType]()
    
    
}

// This is where we generate an API in News API.


