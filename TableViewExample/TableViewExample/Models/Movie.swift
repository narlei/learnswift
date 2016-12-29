//
//  Movie.swift
//  TableViewExample
//
//  Created by Narlei A Moreira on 29/12/16.
//  Copyright © 2016 Narlei A Moreira. All rights reserved.
//

import UIKit

class Movie: NSObject {
    
    
    // Properties
    var name:String!
    var id:Int!
    
    // Initializer
    /*
     Class method like objective-c:
     + (Movie) createWith...
     */
    class func createWith(pName:String, pId:Int) -> Movie {
        let movie:Movie = Movie()
        movie.name = pName
        movie.id = pId
        return movie
    }
    
    
    // Method with block parameter
    func findNew(onComplete:(_ array:Array<Any>) ->Void) {
        onComplete(["Aqui"])
    }
    
}
