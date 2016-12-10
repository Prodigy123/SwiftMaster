//
//  cellInfos.swift
//  Viewer
//
//  Created by 吉安 on 10/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import Foundation

struct cellInfo{
    var imageName: String!
    var text: String!
    static func getInfo()->[cellInfo]{
        print("i am here")
        return [
            cellInfo(imageName: "hello", text: "Hello there, i miss u."),
            cellInfo(imageName: "dudu", text: "🐳🐳🐳🐳🐳"),
            cellInfo(imageName: "bodyline", text: "Training like this, #bodyline"),
            cellInfo(imageName: "wave", text: "I'm hungry, indeed."),
            cellInfo(imageName: "darkvarder", text: "Dark Varder, #emoji"),
            cellInfo(imageName: "hhhhh", text: "I have no idea, bitch"),
            cellInfo(imageName: "run", text: "everyday, I run for myself"),
        ]
        
    }


}
