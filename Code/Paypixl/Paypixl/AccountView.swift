//
//  AccountView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 09/03/2021.
//

import SwiftUI

struct AccountView: View {
    
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
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 12)
            
                Rectangle()
                    .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            
            
            HStack{
                VStack{
                    Text("Gallery")
                        .foregroundColor(Color(#colorLiteral(red: 0.407048434, green: 0.8259993196, blue: 1, alpha: 1)))
                    Text("123124Dr34")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.bottom, 10)
                    Text("Date uploaded")
                        .foregroundColor(Color(#colorLiteral(red: 0.407048434, green: 0.8259993196, blue: 1, alpha: 1)))
                    Text("01/22/2021")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.bottom, 10)
                    
                    Text("# of images")
                        .foregroundColor(Color(#colorLiteral(red: 0.407048434, green: 0.8259993196, blue: 1, alpha: 1)))
                    Text("125")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .padding(.bottom, 10)
                    
                    HStack{
                        
                        Text("456")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.bottom, 10)
                        
                        Text("views")
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                            .padding(.bottom, 10)
                        
                        Image("social_view")
                            .resizable()
                            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                    }
                    .padding()
                    .frame(height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(#colorLiteral(red: 0.01797842048, green: 0.6566935778, blue: 0.8875976205, alpha: 1)))
                    
                }
                
                VStack{
                   
                    
                    ZStack(alignment:.bottom){
                        
                        
                        InsetMap()
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Dowload")
                                .frame(width: 140,height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .font(.title3)
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                .padding(.bottom, 10)
                                .background(RoundedRectangle(cornerRadius: 30).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                .padding()
                        })
                      
                        
                            
                      
                       
                        
                    }
        
                }
            }.padding()
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false){
                
                HStack {
                    ImageView(name: "sample1")
                    ImageView(name: "sample2")
                }
                
                HStack {
                    ImageView(name: "addImage")
                    ImageView(name: "addImage")
                }
                
                HStack {
                    ImageView(name: "addImage")
                    ImageView(name: "addImage")
                }

            }.padding()
        
                Spacer()
         
         
            
  
        }// VSTACK END
        
        .background(
            Color(#colorLiteral(red: 0.02251005173, green: 0.0542556569, blue: 0.126665622, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
        )
        .navigationBarHidden(true)
        
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct ImageView: View {
    
    var name : String
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: 180, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
