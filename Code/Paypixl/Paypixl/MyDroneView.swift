//
//  MyDroneView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 11/03/2021.
//

import SwiftUI

struct MyDroneView: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack(alignment: .center){
   
        
                
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
                ZStack {
                Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1)),Color(#colorLiteral(red: 0.3502011001, green: 0.7777693868, blue: 1, alpha: 1)),Color(#colorLiteral(red: 0.07351095229, green: 0.1213159785, blue: 0.2022863328, alpha: 1))]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))

                        .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                
                Image("drone_blue")
                    .resizable()
                    .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
          
            
            droneView(imageName: "drone 1", Title: "Mavic Pro", modelNumber: "2342432421432423")
            
            droneView(imageName: "drone 2", Title: "Phantom 4 Pro", modelNumber: "2342432421432423")
            
            droneView(imageName: "drone 3", Title: "Mavic Mini", modelNumber: "2342432421432423")
          
           Spacer()
            
            Button(action: {
                
            }, label: {
               
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(Color.gray)
                        .frame(width: 252, height: 52, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.05399806052, green: 0.1036752835, blue: 0.2486178875, alpha: 1)),Color(#colorLiteral(red: 0.03122062236, green: 0.0576608628, blue: 0.1430178285, alpha: 1))]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 250, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Text("ADD ANOTHER DRONE")
                        .font(.subheadline)
                        .foregroundColor(.white)
                }

            })
            Spacer()
            Text("© Raven Spatial, Inc. 2021")
                .font(.caption)
                .foregroundColor(.gray)
                     
            
        }.background(
            Color(#colorLiteral(red: 0.04567161947, green: 0.09620184451, blue: 0.2282870114, alpha: 1))
                
        )
//                Spacer()
         
         
            
  
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

struct MyDroneView_Previews: PreviewProvider {
    static var previews: some View {
        MyDroneView()
    }
}

struct droneView: View {
    
    var imageName: String
    var Title: String
    var modelNumber : String
    var body: some View {
        HStack{
            
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100, alignment: .center)
                
            Spacer()
            
            
           
            
            VStack(alignment:.leading){
                Text(Title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(#colorLiteral(red: 0.2761338055, green: 0.6474853158, blue: 0.862437427, alpha: 1)))
                    .padding()
                Text(modelNumber)
                    .foregroundColor(.white)
            }
            
            Image(systemName: "xmark")
                .foregroundColor(.red)
                .padding(.top, 60)
            
            
            
            Spacer()
            
        }.padding()
    }
}
