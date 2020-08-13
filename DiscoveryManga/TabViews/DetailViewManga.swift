//
//  DetailViewManga.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 06/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

var mangaWatchList : [Manga] = []
var mangaLikeList : [Manga] = []
var mangaDislikeList : [Manga] = []


struct DetailViewManga: View {
    
    let manga : Manga
    
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
                        Text(manga.name).fontWeight(.light).foregroundColor(.white).font(.largeTitle).multilineTextAlignment(.center)
                        
                        Image(manga.poster).resizable().frame(width : 180, height:270)
                        
                        HStack {
                            
                            Button(action: {
                                if self.isItInWatchList == false {
                                    mangaWatchList.append(self.manga)
                                }
                                self.isItInWatchList.toggle()
                                
                            }, label:{
                                Image(systemName: isItInWatchList ? "book.circle.fill" : "plus.circle")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(.white)
                            
                            Spacer().frame(width:30)
                            
                            Button(action: {
                                
                                if self.isItInLikeList == false {
                                    mangaLikeList.append(self.manga)
                                }
                                self.isItInLikeList.toggle()
                                
                                
                            }, label:{
                                Image(systemName: isItInLikeList ? ("hand.thumbsup.fill"): "hand.thumbsup")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(isItInLikeList ? .green : .white)
                            Spacer().frame(width:30)
                            
                            Button(action: {
                                if self.isItInDislikeList == false {
                                    mangaDislikeList.append(self.manga)
                                }
                                self.isItInDislikeList.toggle()
                                
                            }, label:{
                                Image(systemName: isItInDislikeList ? "hand.thumbsdown.fill" : "hand.thumbsdown")
                                    
                                    
                                    .resizable().frame(width : 30, height : 30)}).foregroundColor(isItInDislikeList ? .red : .white)
                        }
                    }
                    VStack (alignment: .leading) {
                        
                        Group {
                            Text("Manga de type \(manga.genre.rawValue)").foregroundColor(.white)
                            
                            Spacer().frame(height:10)
                            
                            HStack {
                                Text("Genre :").foregroundColor(.white)
                                
                                ForEach(manga.tags, id:\.self) { genre in
                                    Text(genre.rawValue).foregroundColor(.white)
                                }
                            }
                            Group{
                                Spacer()
                                Text("Date de sortie : \(manga.releaseDate)").foregroundColor(.white)
                                Spacer()
                                Text("Auteur : \(manga.author)").foregroundColor(.white)
                                Spacer()
                                Text("Éditeur : \(manga.maisonEdition)").foregroundColor(.white)
                                Spacer()
                                Text("Nombre de tomes : \(manga.nbTomes)").foregroundColor(.white)
                            }
                            
                            Spacer().frame(height: 30)
                            
                            
                            Text("Synopsis").foregroundColor(.white).font(.system(size: 20))
                            
                        }
                        
                        Spacer().frame(height: 30)
                        
                        Text(manga.synopsis).foregroundColor(.white).font(.callout)
                        
                        Spacer().frame(height: 30)
                        
                        Text("Gallerie").foregroundColor(.white).font(.headline)
                        
                        Spacer().frame(height: 30)
                        
                        
                        ScrollView(.horizontal){
                            
                            HStack {
                                
                                ForEach(manga.galerie, id:\.self) { image in
                                    
                                    Image(image).resizable().frame(width: 125, height: 200).padding(.leading)
                                }
                            }
                        }
                    }
                }
            }.padding()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DetailViewManga_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewManga(manga: gto)
    }
}
