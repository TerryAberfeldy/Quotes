//
//  DataService.swift
//  Lesson 16 module 2 challenge
//
//  Created by Terry Malden on 2022-04-04.
//

import Foundation

class DataService{
   
    func getLocalData() -> [QuotesModel] {
       
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
         
        guard pathString != nil else {
            return [QuotesModel]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do{

            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            do{
                let quotesData = try decoder.decode([QuotesModel].self, from: data)
                
                for r in quotesData{
                    r.id = UUID()
                }
                 
                return quotesData
                
            }
            catch{
                print(error)            }
        }
        catch{
            print(error)
        }
        
        return[QuotesModel]()
    }
}
