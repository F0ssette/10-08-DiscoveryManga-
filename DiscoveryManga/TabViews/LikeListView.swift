//
//  LikeListView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 11/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct LikeListView: View {
    
    var body: some View {
        
        ZStack{
            
            Color ("BackColor")
            
            VStack{
                Spacer().frame(height: 50)
                Text("Mes Likes")
                    .font(.title)
                    .foregroundColor(.white)
                
                HStack {
                    
                    List(mangaLikeList)  {
                        
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
                    
                    List(animeLikeList)  {
                        
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


struct LikeListView_Previews: PreviewProvider {
    static var previews: some View {
        LikeListView()
    }
}
