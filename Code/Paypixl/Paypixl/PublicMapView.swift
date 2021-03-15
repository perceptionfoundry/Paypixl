//
//  PublicMapView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 12/03/2021.
//

import SwiftUI

struct PublicMapView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .center){
   
        
                
            HStack{
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    
                    Image("menu_dots")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                })
                
                
               
                Spacer()
                Image("paypixl_small")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(#colorLiteral(red: 0.1458410025, green: 0.2502840161, blue: 0.5443473458, alpha: 1)), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 2)
            
               
            VStack{
            ScrollView{
            VStack {
                
                
                
                
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
             
                
          
                    
                    
                    
             InsetMap()
                .preferredColorScheme(.dark)
                
                
                .overlay(
                    
                    
                    HStack {
                        VStack{
                            
                            Image("search")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                        
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.6449289322, blue: 0.8715689182, alpha: 1)))
                                .frame(width: 120, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("TASKS")
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 20)
                        .padding()
                        }
                        Spacer()
                        VStack {
                            Image("layer")
                                .resizable()
                                .scaledToFill()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Spacer()
                        }
                    }
                )
                .frame(height: 550, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
              

         
           
                
                
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                
                HStack{
                VStack{
                    
                    Text("4567")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.03578172624, green: 0.5535734892, blue: 0.7637392879, alpha: 1)))
                    Text("USER")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    Divider()
                        .foregroundColor(.black)
                    
                    Text("24567")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.03578172624, green: 0.5535734892, blue: 0.7637392879, alpha: 1)))
                    Text("IMAGES")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                   
                    Spacer()
                }.padding()
                 
                    VStack{
                        Spacer()
                        Text("RANK")
                            .font(.custom("", size: 15))
                            .foregroundColor(.black)
                        Text("157")
                            .font(.custom("", size: 48))
                            .foregroundColor(.white)
                        Text("4522")
                            .font(.custom("", size: 24))
                            .foregroundColor(.black)
                        Text("+")
                            .font(.custom("", size: 72))
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                    .padding()
                    .background(
                        Color(#colorLiteral(red: 0.01797842048, green: 0.6566935778, blue: 0.8875976205, alpha: 1)))
                    Spacer()
                
                VStack{
                    Text("677")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.03578172624, green: 0.5535734892, blue: 0.7637392879, alpha: 1)))
                    Text("IMAGES UPLOADED")
                        .multilineTextAlignment(.center)
                        .font(.custom("", size: 15))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    Divider()
                        .foregroundColor(.black)
                    
                    Text("14")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(#colorLiteral(red: 0.03578172624, green: 0.5535734892, blue: 0.7637392879, alpha: 1)))
                    Text("TASKS FULFILLED")
                        .font(.custom("", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    
                    Spacer()
                }
                }
                .padding(.horizontal, 10)
            }
           
            }
                
              
          
        }
            .background(
                Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1))
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
            )
                    
            
          
        
              
         
         
            
  
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

struct PublicMapView_Previews: PreviewProvider {
    static var previews: some View {
        PublicMapView()
    }
}
