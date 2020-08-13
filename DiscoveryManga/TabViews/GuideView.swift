//
//  GuideView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct GuideView: View {
    
    let articles : [Guides] = [whatIsAManga, whatIsAnAnime, mangaBDComics, genreDeMangas]
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                Color("BackColor")
                
                VStack {
                    
                    Text("Guide de survie en territoire Manga")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                    
                    List(articles) {article in
                        NavigationLink(destination: DetailsArticle(detailGuide: article),
                                       label: {
                                        HStack {
                                            Spacer()
                                            ArticleRow(displayArticle: article)
                                            Spacer()
                                        }
                        })
                    }.onAppear(perform: {
                        UITableView.appearance().separatorStyle = .none
                        UITableView.appearance().backgroundColor = UIColor.clear
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    })
                    
                    
                    }.padding()
            }.padding(.top, -90)
        }.navigationBarHidden(true).navigationBarTitle("")
    }
}

struct ArticleRow: View {
    
    let displayArticle : Guides
    
    var body: some View {
        
        VStack {
            Spacer().frame(height: 30)
            Text(displayArticle.title)
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.title)
            Image(displayArticle.poster)
                .resizable()
                .frame(width: 125, height: 125)
                .cornerRadius(100)
        }
    }
}

struct DetailsArticle: View {
    
    var detailGuide : Guides
    
    var body: some View {
        
        ZStack {
            Color("BackColor")
            
            VStack {
                
                Spacer()
                
                Image(detailGuide.poster)
                    .resizable()
                    .frame(width: 125, height: 125)
                    .cornerRadius(100)
                
                Text(detailGuide.title)
                    .multilineTextAlignment(.center)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Spacer()
                
                ScrollView{
                    Text(detailGuide.content)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
            }.padding()
            
        }.padding(.top, -90)
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
