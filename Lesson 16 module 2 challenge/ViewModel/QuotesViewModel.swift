//
//  QuotesViewModel.swift
//  Lesson 16 module 2 challenge
//
//  Created by Terry Malden on 2022-04-04.
//

import Foundation

class QuotesViewModel: ObservableObject{
    
    @Published var quotesVar = [QuotesModel]()
    
    
    init(){
        
        
        let service = DataService()
        self.quotesVar = service.getLocalData()
        
    }
    
}
