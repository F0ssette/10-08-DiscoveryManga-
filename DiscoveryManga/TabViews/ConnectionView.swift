//
//  SignIn.swift
//  DiscoveryManga
//
//  Created by Lucie Kozik on 10/08/2020.
//  Copyright © 2020 Lucie Kozik. All rights reserved.
//

import SwiftUI

struct SignIn: View {
    
    @Binding var showSignInInt: Bool
    @Binding var isConnected: Bool
    @State var username: String
    @State var password: String
    @State var email: String
    
    var body: some View {
        
        ZStack{
            
            Image("logbackground").resizable().frame(width:500, height: 1000).padding(.leading).frame(width: 450)
            
            Image("logo").resizable().frame(width: 440, height: 300).position(.init(x: 220, y: 270))
            
            Text("Discovery Manga").position(.init(x: 220, y: 110)).font(.system(size: 40)).foregroundColor(.white)
            
            VStack{
                
                Spacer().frame(height: 390)
                Text("Inscription").foregroundColor(.white).font(.system(size: 25))
                
                Form {
                    Section(header: Text("PSEUDO")) {
                        TextField("Username", text: $username)
                    }.foregroundColor(.white).multilineTextAlignment(.leading)
                    
                    Section(header: Text("EMAIL")) {
                        TextField("email", text: $email)
                    }.foregroundColor(.white)
                    
                    Section(header: Text("MOT DE PASSE")) {
                        SecureField("Password", text: $password)
                    }.foregroundColor(.white)
                    
                    Button("M'inscrire") {
                        UserDefaults.standard.set(self.username, forKey: "username")
                        UserDefaults.standard.set(self.password, forKey: "password")
                        UserDefaults.standard.set(self.email, forKey: "email")
                        self.showSignInInt = false
                        self.isConnected = true
                    }.frame(width: 300)
                        .padding()
                        .background(Color("logincolor"))
                        .cornerRadius(10)
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                }.onAppear(perform: {
                    UITableView.appearance().backgroundColor = UIColor.init(named: "logincolor")
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                }).frame(height:400)
                    .cornerRadius(30)
                    .padding()
                
                
                Spacer()
            }.padding()
        }
    }
}

struct LogInView: View {
    
    @Binding var showLogInInt: Bool
    @Binding var isConnected: Bool
    @State var username: String
    @State var password: String
    
    var body: some View {
        
        ZStack{
            
            Image("logbackground").resizable().frame(width:500, height: 1000).padding(.leading).frame(width: 450)
            
            Image("logo").resizable().frame(width: 440, height: 300).position(.init(x: 220, y: 270))
            
            Text("Discovery Manga").position(.init(x: 220, y: 110)).font(.system(size: 40)).foregroundColor(.white)
            
            VStack{
                
                Spacer().frame(height: 390)
                Text("Connexion").foregroundColor(.white).font(.system(size: 25))
                
                Form {
                    Section(header: Text("PSEUDO")) {
                        TextField("Username", text: $username)
                    }.foregroundColor(.white).multilineTextAlignment(.leading)
                    
                    
                    Section(header: Text("MOT DE PASSE")) {
                        SecureField("Password", text: $password)
                    }.foregroundColor(.white)
                    
                    Button("Me Connecter") {
                        UserDefaults.standard.set(self.username, forKey: "username")
                        UserDefaults.standard.set(self.password, forKey: "password")
                        self.isConnected = true
                        self.showLogInInt = false
                    }.frame(width: 300)
                        .padding()
                        .background(Color("logincolor"))
                        .cornerRadius(10)
                        .font(.system(size: 25))
                        .foregroundColor(Color.white)
                }.onAppear(perform: {
                    UITableView.appearance().backgroundColor = UIColor.init(named: "logincolor")
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                }).frame(height:300)
                    .cornerRadius(30)
                    .padding()
                
                
                Spacer()
            }.padding()
        }
    }
}

struct ConnectionView: View {
    
    @State var showSignIn = false
    @State var showLogIn = false
    @Binding var isConnected: Bool
    
    var body : some View {
        
        ZStack{
            
            Image("logbackground").resizable().frame(width:500, height: 1000).padding(.leading).frame(width: 450)
            
            Image("logo").resizable().frame(width: 440, height: 300).position(.init(x: 220, y: 270))
            
            Text("Discovery Manga").position(.init(x: 220, y: 110)).font(.system(size: 40)).foregroundColor(.white)
            
            HStack{
                Button(action: {
                    self.showSignIn.toggle()
                }) {
                    Text("S'inscrire")
                        .padding()
                        .background(Color("logincolor"))
                        .cornerRadius(10)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }.sheet(isPresented: $showSignIn) {
                    SignIn(showSignInInt: self.$showSignIn,isConnected: self.$isConnected, username: "", password: "", email: "")
                }
                
                Button(action: {
                    self.showLogIn.toggle()
                }) {
                    Text("Connection")
                        .padding()
                        .background(Color("logincolor"))
                        .cornerRadius(10)
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                }.sheet(isPresented: $showLogIn) {
                    LogInView(showLogInInt: self.$showLogIn, isConnected: self.$isConnected, username: "", password: "")
                }
            }
        }
    }
    
    struct ConnectionView_Previews: PreviewProvider {
        static var previews: some View {
            ConnectionView(isConnected: .constant(true))
        }
    }
}
