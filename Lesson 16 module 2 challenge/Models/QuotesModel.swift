//
//  QuotesModel.swift
//  Lesson 16 module 2 challenge
//
//  Created by Terry Malden on 2022-04-04.
//

import Foundation

class QuotesModel: Identifiable, Decodable{

    
    var id:UUID?
    var name = ""
    var quotes = [""]
    var image:String
}
