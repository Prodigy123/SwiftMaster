//
//  MyModel.swift
//  Project2
//
//  Created by 吉安 on 07/12/2016.
//  Copyright © 2016 An Ji. All rights reserved.
//

import Foundation

struct FontInfo{
    static var classOfFont = -1
    static let data = ["your presence is a gift to the world.", "you're unique and one of a kind.", "your life can be what you want it to be", "take it one day at a time", "focus on your blessings,", "not your troubles",
                "and you'll make it",
                "through what comes along.",
                "have belief in your ability.",
                "have belief in your ability."]
    static let fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "Gaspar Regular"]
    static func nextFont()->String{
        classOfFont = (classOfFont+1)%4
        return  FontInfo.fontNames[classOfFont]

    }
}
