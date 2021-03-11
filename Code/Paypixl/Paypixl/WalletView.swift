//
//  WalletView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 11/03/2021.
//

import SwiftUI

struct WalletView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            
            VStack(alignment: .center){
       
            
                    
                    HStack{
                        
                        
                        Image("avatar")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .shadow(color: Color(#colorLiteral(red: 0.1458410025, green: 0.2502840161, blue: 0.5443473458, alpha: 1)), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                       
                        Spacer()
                       
                        VStack(alignment:.leading){
                            Text("Robert Smith")
                                .font(.custom("", size: 16))
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color(#colorLiteral(red: 0.5266810656, green: 0.8567280173, blue: 1, alpha: 1)))
                              
                            
                            Text("My Wallet")
                                .font(.title)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        }.padding(.trailing, 100)
                        
                        Spacer()
                       
                        
                        
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            
                            Image("Xmark_blue")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        })

                    }
                    .padding(.horizontal, 30)
                    .padding(.bottom, 12)
                
                   
                
                
                VStack {
                    
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack{
                        Text("Current \n Balance")
                            .foregroundColor(.white)
                            .font(.custom("", size: 16))
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack{
                            Text("15 TASKS")
                                .foregroundColor(Color(#colorLiteral(red: 0.503033042, green: 0.8167003989, blue: 0.9979819655, alpha: 1)))
                                .font(.custom("", size: 16))
                                .fontWeight(.bold)
                            
                            Text("Completed")
                                .foregroundColor(.white)
                                .font(.custom("", size: 16))
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        
                        Spacer()
                        Text("$")
                            .foregroundColor(Color(#colorLiteral(red: 0.503033042, green: 0.8167003989, blue: 0.9979819655, alpha: 1)))
                            .font(.custom("", size: 24))
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        Text("5,432")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .font(.custom("", size: 48))
                            .fontWeight(.bold)
                        
                           
                    }
                    .padding()
                    
                    Rectangle()
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("SELECT WITHDRAWAL METHOD")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .font(.custom("", size: 16))
                        .fontWeight(.bold)
                        .padding()
                    
                    
                    modeView(BG: Color(#colorLiteral(red: 0.9417685866, green: 0.9373925328, blue: 0.919798553, alpha: 1)), type: "visa mastercard", title: "Wire Transfer")
                    
                    modeView(BG: Color(#colorLiteral(red: 0.8238269687, green: 0.9562109113, blue: 1, alpha: 1)), type: "paypal", title: "sdhaj@fdsjf.com")
                    modeView(BG: Color(#colorLiteral(red: 0.8933283687, green: 0.9005624652, blue: 1, alpha: 1)), type: "stripe", title: "sdjkfsdk@fg.co")
                    modeView(BG: Color(#colorLiteral(red: 0.9658176303, green: 0.8525073528, blue: 0.7260373235, alpha: 1)), type: "bitcoin", title: "Bitcoin Wallet")
                    modeView(BG: Color(#colorLiteral(red: 0.8273870349, green: 0.8274870515, blue: 0.8273531795, alpha: 1)), type: "Ethereum", title: "Ethereum Wallet")
                    
                    
                    Button(action: {
                        
                    }, label: {
                       
                        ZStack{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(Color.gray)
                                .frame(width: 252, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.05399806052, green: 0.1036752835, blue: 0.2486178875, alpha: 1)),Color(#colorLiteral(red: 0.03122062236, green: 0.0576608628, blue: 0.1430178285, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                                .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            Text("Payment Settings")
                                .font(.subheadline)
                                .foregroundColor(.white)
                        }

                    })
                  
//                    Text("© Raven Spatial, Inc. 2021")
//                        .font(.caption)
//                        .foregroundColor(.gray)
                    
                  
                }.background(
                    Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1))
                        
                )
                        
                
                
          
            
//                    Spacer()
             
             
                
      
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

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

struct modeView: View {
    
    var BG : Color
    var type :String
    var title : String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(BG)
                .frame( height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack{
                Image(type)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 20)
                Spacer()
               
                Image("arrow_wallet")
                    .resizable()
                    .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal)
            
            Text(title)
                .multilineTextAlignment(.trailing)
                .padding(.leading, 100)
        }.padding(.horizontal)
    }
}
