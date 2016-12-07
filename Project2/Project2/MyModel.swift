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
    static let data = ["30 Items Swift", "这些字体特别适合打「奋斗」和「理想」", "谢谢「造字工房」，本案例不涉及商业使用", "使用到造字工房劲黑体，致黑体，童心体", "呵呵，再见🤗 See you next Project", "微博 @Prodigy",
                "测试测试测试测试测试测试",
                "123",
                "Alex",
                "@@@@@@"]
    static let fontNames = ["MFTongXin_Noncommercial-Regular", "MFJinHei_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular", "Gaspar Regular"]
    static func nextFont()->String{
        classOfFont = (classOfFont+1)%4
        return  FontInfo.fontNames[classOfFont]

    }
}
