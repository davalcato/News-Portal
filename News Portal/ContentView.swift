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
    
    init() {
        
        let source = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-04-19&sortBy=publishedAt&apiKey=60f8409fa20b4a5ea3a54ee3d1f229e9"
        
        let url = URL (string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, _, err) in
            
            if Err != nil{
                
                print((err?.localizedDescription)!)
                return
                
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"]{
                
                let title =
                
                
            }
        }
    }
}

// This is where we generate an API in News API.


