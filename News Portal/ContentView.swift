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

class getDate : ObservableObject{
    
    @Published var datas = [dataType]()
    
    init() {
        
        let source = "http://newsapi.org/v2/everything?q=bitcoin&from=2020-04-19&sortBy=publishedAt&apiKey=60f8409fa20b4a5ea3a54ee3d1f229e9"
        
        let url = URL (string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, _, err) in
            
            if err != nil{
                
                print((err?.localizedDescription)!)
                return
                
            }
            
            let json = try! JSON(data: data!)
            
            for i in json["articles"]{
                
                let title = i.1["title"].stringValue
                let description = i.1["description"].stringValue
                let url = i.1["url"].stringValue
                let image = i.1["urlToImage"].stringValue
                let id = i.1["publishedAt"].stringValue
                
                self.datas.append(dataType(id: id, title: title, desc: description, url: url, image: image))
                
                
                
            }
        }
    }
}

// This is where we generate an API in News API.


