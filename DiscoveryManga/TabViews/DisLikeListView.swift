//
//  DisLikeListView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 11/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct DisLikeListView: View {
    
    var body: some View {
        
        ZStack{
            
            Color ("BackColor")
            
            VStack{
                Spacer().frame(height: 50)
                Text("Mes DisLike")
                    .font(.title)
                    .foregroundColor(.white)
                
                HStack {
                    
                    List(mangaDislikeList)  {
                        
                        book in
                        
                        NavigationLink(destination: DetailViewManga(manga: book), label: {
                            
                            Image (book.poster)
                                .resizable()
                                .frame(width: 150, height: 200)
                        })
                    }.onAppear(perform: {
                        UITableView.appearance().separatorStyle = .none
                        UITableView.appearance().backgroundColor = UIColor.clear
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    })
                    
                    List(animeDislikeList)  {
                        
                        oeuvre in
                        
                        NavigationLink(destination: DetailsVIew(anime: oeuvre), label: {
                            
                            Image (oeuvre.poster)
                                .resizable()
                                .frame(width: 150, height: 200)
                        })
                    }.onAppear(perform: {
                        UITableView.appearance().separatorStyle = .none
                        UITableView.appearance().backgroundColor = UIColor.clear
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    })
                }.frame(height:700) //HStack des listes
                
            }.padding() // VStack Titre + Listes
        }.edgesIgnoringSafeArea(.top) // ZStack
    }
}

struct DisLikeListView_Previews: PreviewProvider {
    static var previews: some View {
        DisLikeListView()
    }
}
