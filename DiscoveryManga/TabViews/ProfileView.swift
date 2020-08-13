//
//  ProfilView.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 04/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color("BackColor")
                
                VStack {
                    HStack {
                        //Cercle
                        Image(userData.picture)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .clipShape(Circle())
                        Spacer()
                        VStack {
                            Text("Pseudo: \(getUserName())").foregroundColor(.white)
                            Spacer().frame(height: 30)
                            
                            Text("e-mail: \(getUserEmail())").foregroundColor(.white)
                            
                        }.multilineTextAlignment(.center)
                    }.padding([.leading, .trailing], 50)
                    
                    Spacer().frame(height: 25)
                    
                    ZStack {
                        NavigationLink(destination: WatchListView(), label: {
                            
                            Image("watchList").resizable().frame(width: 300, height: 200)
                            
                            Text("Watchlist").font(.title).fontWeight(.bold).offset(x: 80, y: 70).foregroundColor(.blue)
                        }).buttonStyle(PlainButtonStyle())
                    }
                    
                    Spacer().frame(height: 75)
                    
                    HStack {
                        ZStack {
                            
                            NavigationLink(destination: LikeListView(), label: {
                                
                                Image("likeList").resizable().frame(width:170,height: 170)
                                Image(systemName:"hand.thumbsup").resizable().frame(width: 50, height: 50).offset(x: 50, y:50).foregroundColor(.green)
                                
                            }).buttonStyle(PlainButtonStyle())
                        }
                        
                        ZStack {
                            NavigationLink(destination: DisLikeListView(), label: {
                                
                                Image("dislikeList").resizable().frame(width:170,height: 170).clipShape(Rectangle())
                                
                                
                                Image(systemName:"hand.thumbsdown").resizable().frame(width: 50, height: 50).offset(x: 50, y:50).foregroundColor(.red)
                            }).buttonStyle(PlainButtonStyle())
                        }
                    }
                }.padding(.bottom, 50).padding([.leading, .trailing,.top], 20) //VStack
            }.edgesIgnoringSafeArea(.top) //ZStack
        } // NavigationView
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

