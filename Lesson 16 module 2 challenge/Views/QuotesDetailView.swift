//
//  QuotesDetailView.swift
//  Lesson 16 module 2 challenge
//
//  Created by Terry Malden on 2022-04-04.
//

import SwiftUI

struct QuotesDetailView: View {

    var quotesabc:QuotesModel

    var body: some View {
     
        ScrollView{
            
            ZStack{
            Image(quotesabc.image)
                    .resizable()
                    .scaledToFit()
                    .padding(.all)
                    . scaledToFill()
                    .clipped()
                    .opacity(0.4)

            Spacer()
            
            VStack(alignment: .leading){
                
                Text("Quotes")
                    .font(.headline)
                    .foregroundColor(Color.black)
                    .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                    

                ForEach(quotesabc.quotes, id:\.self){item in
                    Text(item)
                        .foregroundColor(Color.black)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)            
                }
            }
            .padding(.horizontal)
            }

        }  // end of SrollView
        Spacer()
        .navigationBarTitle(quotesabc.name)
    }
}

struct QuotesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesViewModel()
        QuotesDetailView(quotesabc: model.quotesVar[1])
    }
}
