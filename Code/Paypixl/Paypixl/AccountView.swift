//
//  AccountView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 11/03/2021.
//

import SwiftUI

struct AccountView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .center){
   
        
                
            
            ZStack(alignment:.top) {
                
               
            VStack{
                HStack{
                        
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            
                            Image("Xmark_blue")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        })
                        Spacer()
                       
                       
                        
                       
                       
                        
                        
                        Button(action: {
                            
                        }, label: {
                            
                            Image("edit_icon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        })

                    }
                    .padding(.horizontal, 30)
                .padding(.bottom)
                
                ZStack(alignment:.top){
                    
                    Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1))
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    
                    VStack{
                        Text("Robert Smith")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.top, 70)
                        
                        Text("- FREE LEVEL -")
                            .fontWeight(.semibold)
                            .foregroundColor(Color(#colorLiteral(red: 0.2897180915, green: 0.6830891371, blue: 0.9064096212, alpha: 1)))
                            .padding(.top)
                        HStack{
                            
                            
                            
                            Text("15")
                                .font(.custom("", size: 40))
                                .foregroundColor(Color(#colorLiteral(red: 0.2897180915, green: 0.6830891371, blue: 0.9064096212, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.8154326081, green: 0.7843142152, blue: 0.06648831815, alpha: 1)), radius: 0, x:0.925, y: 0.95)
                            
                            Text("Galleries".uppercased())
                                .font(.custom("", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            
                            Spacer()
                            
                            Text("40%")
                            
                                .font(.custom("", size: 40))
                                .foregroundColor(Color(#colorLiteral(red: 0.2897180915, green: 0.6830891371, blue: 0.9064096212, alpha: 1)))
                                .shadow(color: Color(#colorLiteral(red: 0.8154326081, green: 0.7843142152, blue: 0.06648831815, alpha: 1)), radius: 0.5, x:0.95, y: 0.95)
                                
                            
                            Text("STORAGE")
                                .font(.custom("", size: 14))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                
                        }
                        .padding(.top, 20)
                        
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        
                        ScrollView{
                        OptionButtonView(title: "Contact Information", imageName: "user")
                            
                            OptionButtonView(title: "Devices", imageName: "device")
                            OptionButtonView(title: "Drone", imageName: "drone")
                            OptionButtonView(title: "Certificates", imageName: "certificate")
                            OptionButtonView(title: "Notification Preference", imageName: "bell")
                            OptionButtonView(title: "Payment Account", imageName: "credit-card")
                            OptionButtonView(title: "Payment Preference", imageName: "setting_small")
                            OptionButtonView(title: "Upgrade My Subcription", imageName: "upload")
                        
                        }
                        
                    }
                }
              
  
            }
           
                
            
                
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 0.1458410025, green: 0.2502840161, blue: 0.5443473458, alpha: 1)), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            }
           
            
            
            Spacer()
            
        }// VSTACK END
        
        .background(
            Image("background_image")
                .resizable()
                .scaledToFill()
                .overlay(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1)), Color.clear, Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                )
                
        )
        .navigationBarHidden(true)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct OptionButtonView: View {
    
    var title : String
    var imageName : String
    
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.trailing, 20)
                Text(title)
                   
                    .fontWeight(.bold)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                
                
                
                
            }
            .padding()
            Divider()
        }
    }
}
