//
//  QuotesListView.swift
//  Lesson 16 module 2 challenge
//
//  Created by Terry Malden on 2022-04-04.
//

import SwiftUI

struct QuotesListView: View {
    
    @ObservedObject var model = QuotesViewModel()

    var body: some View {
        
        NavigationView {
            List(model.quotesVar){ r in
                NavigationLink(
                    destination: QuotesDetailView(quotesabc:r),
                 label: {
                    HStack(spacing: 20.0){
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                            
                        Text(r.name)
                    }
                })
            }
            .navigationBarTitle("Famous Quotes")
        }        
    }
}

struct QuotesListView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesListView()
    }
}
