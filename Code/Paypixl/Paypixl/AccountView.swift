//
//  AccountView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 09/03/2021.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        
        VStack(alignment: .center){
   
        
                
                HStack{
                    Image("menu_dots")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 10, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
                .padding(.top, 40)
                .padding(.horizontal, 30)
                .padding(.bottom, 12)
            
                Rectangle()
                    .frame(height: 1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            
    
                Spacer()
         
         
            
  
        }// VSTACK END
        
        .background(
            Color(#colorLiteral(red: 0.02251005173, green: 0.0542556569, blue: 0.126665622, alpha: 1)).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
        )
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
