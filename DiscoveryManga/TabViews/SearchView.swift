//
//  SearchView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    @State var enteredText : String = ""
    let allManga = [gto, quartierLointain, naruto, myHeroAcademia, tokyoGhoul, slamdunk, onepiece, haikyuu, berserk, diaboliklovers, blackclover, fma, radiant, deathnote]
    let allAnime = [akira, swordArtOnline, onePunchMan, yourName, baki, dragonball, jojobizzareadventure, drstone, vinlandSaga, pokemon, snk, fireforce, skipbeat, doraemon]
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("BackColor")
                
                VStack {
                    Spacer().frame(height: 100)
                    SearchBar(text: $enteredText)
                    
                    HStack{
                        List(allManga.filter{
                            $0.name.contains(enteredText) ||
                                $0.author.contains(enteredText.lowercased()) || $0.genre.rawValue.contains(enteredText) ||
                                $0.isSelected(enteredText: enteredText.lowercased())
                            
                        }) {
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
                        
                        List(allAnime.filter{
                            $0.name.contains(enteredText) || $0.réalisateur.contains(enteredText.lowercased()) ||
                                $0.studio.contains(enteredText.lowercased()) || $0.genre.rawValue.contains(enteredText) ||
                                $0.isSelected(enteredText: enteredText.lowercased())
                        }) {
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
                }.padding(.top, -60.0).padding([.leading, .trailing], 10)
            }.navigationBarHidden(true).navigationBarTitle("")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
