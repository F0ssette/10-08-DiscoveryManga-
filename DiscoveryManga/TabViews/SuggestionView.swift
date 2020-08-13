//
//  SuggestionView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct SuggestionView: View {
    
    let animes : [Anime] = [akira, swordArtOnline, onePunchMan, yourName, baki, dragonball, jojobizzareadventure, drstone, vinlandSaga, pokemon, snk, fireforce, skipbeat, doraemon]
    let mangas : [Manga] = [gto, quartierLointain, naruto, myHeroAcademia, tokyoGhoul, slamdunk, onepiece, haikyuu, berserk, diaboliklovers, blackclover, fma, radiant, deathnote]
    
    var body: some View {
        
        NavigationView {
            
            ZStack{
                
                Color ("BackColor")
                
                HStack {
                    VStack{
                        
                        List(mangas)  {
                            
                            book in
                            
                            HStack {
                                
                                NavigationLink(destination: DetailViewManga(manga: book), label: {
                                    
                                    Image (book.poster)
                                        .resizable()
                                        .frame(width: 150, height: 200)
                                    
                                })
                            }
                        }.onAppear(perform: {
                            UITableView.appearance().separatorStyle = .none
                            UITableView.appearance().backgroundColor = UIColor.clear
                            UITableViewCell.appearance().backgroundColor = UIColor.clear
                        })
                        
                    }
                    
                    VStack{
                        
                        List(animes)  {
                            
                            oeuvre in
                            
                            HStack {
                                
                                NavigationLink(destination: DetailsVIew(anime: oeuvre), label: {
                                    
                                    Image (oeuvre.poster)
                                        .resizable()
                                        .frame(width: 150, height: 200)
                                    
                                })
                            }
                        }.onAppear(perform: {
                            UITableView.appearance().separatorStyle = .none
                            UITableView.appearance().backgroundColor = UIColor.clear
                            UITableViewCell.appearance().backgroundColor = UIColor.clear
                        })
                        
                    }
                    
                }.padding()
            }.navigationBarHidden(true).navigationBarTitle("")
        }
    }
}
struct SuggestionView_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionView()
    }
}
