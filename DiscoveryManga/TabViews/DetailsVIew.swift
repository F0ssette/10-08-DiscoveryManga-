//
//  DetailsVIew.swift
//  DiscoveryManga
//
//  Created by Lucie KOZIK on 05/08/2020.
//  Copyright © 2020 Lucie KOZIK. All rights reserved.

import SwiftUI

var animeWatchList : [Anime] = []
var animeLikeList : [Anime] = []
var animeDislikeList : [Anime] = []

struct DetailsVIew: View {
    
    let anime : Anime
    
    
    @State var isItInWatchList = false
    @State var isItInLikeList = false
    @State var isItInDislikeList = false
    

    
    
    var body: some View {
        
        ZStack {
            
            Color("BackColor")
            
            ScrollView {
                
                VStack {
                    Spacer().frame(height: 35)
                    
                    VStack {
                        Text(anime.name).fontWeight(.light).foregroundColor(.white).font(.largeTitle).multilineTextAlignment(.center)
                        
                        Image(anime.poster).resizable().frame(width : 180, height:270)
                        
                        HStack {
                            
                            Button(action: {
                                if self.isItInWatchList == false {
                                    animeWatchList.append(self.anime)
                                }
                                self.isItInWatchList.toggle()
                                
                            }, label:{
                                
                                Image(systemName: isItInWatchList ? "book.circle.fill" : "plus.circle")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(.white)
                               
                                
                            
                            Spacer().frame(width:30)
                            
                            Button(action: {
                                if self.isItInLikeList == false {
                                animeLikeList.append(self.anime)
                                }
                                self.isItInLikeList.toggle()
                            }, label:{
                                
                                Image(systemName: isItInLikeList ? ("hand.thumbsup.fill"): "hand.thumbsup")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(isItInLikeList ? .green : .white)
                            
                            Spacer().frame(width:30)
                            
                            Button(action: {
                                if self.isItInDislikeList == false {
                                animeDislikeList.append(self.anime)
                                }
                                self.isItInDislikeList.toggle()
                            }, label:{
                                
                                Image(systemName: isItInDislikeList ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(isItInDislikeList ? .red : .white)
                        }
                    }
                    VStack (alignment: .leading) {
                        
                        Group {
                            Text("Anime de type \(anime.genre.rawValue)").foregroundColor(.white)
                            
                            Spacer().frame(height:10)
                            
                            HStack {
                                Text("Genre :").foregroundColor(.white)
                                
                                ForEach(anime.tags, id:\.self) { genre in
                                    Text(genre.rawValue).foregroundColor(.white)
                                }
                            }
                            Group{
                                Spacer()
                                Text("Date de sortie : \(anime.releaseDate)").foregroundColor(.white)
                                Spacer()
                                Text("Studio : \(anime.réalisateur)").foregroundColor(.white)
                                Spacer()
                                Text("Réalisateur : \(anime.studio)").foregroundColor(.white)
                                Spacer()
                                Text("Nombre d'épisode : \(anime.nbEpisodes)").foregroundColor(.white)
                            }
                            
                            Spacer().frame(height: 30)
                            
                            
                            Text("Synopsis").foregroundColor(.white).font(.system(size: 20))
                            
                        }
                        
                        Spacer().frame(height: 30)
                        
                        Text(anime.synopsis).foregroundColor(.white).font(.callout)
                        
                        Spacer().frame(height: 30)
                        
                        Text("Gallerie").foregroundColor(.white).font(.headline)
                        
                        Spacer().frame(height: 30)
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack {
                                
//                                player(url: anime.url).frame(width: 200, height: 125).padding(.leading)

                                ForEach(anime.galerie, id:\.self) { image in
                                    
                                    Image(image).resizable().frame(width: 200, height: 125).padding(.leading)
                                }
                            }
                        }
                    }
                }
            }.padding()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailsVIew_Previews: PreviewProvider {
    static var previews: some View {
        DetailsVIew(anime: onePunchMan)
    }
}
