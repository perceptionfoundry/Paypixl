//
//  ContentView.swift
//  Paypixl
//
//  Created by Syed ShahRukh Haider on 09/03/2021.
//

import SwiftUI

struct OptionView: View {
    
    
    @State var accountSegue = false
    var body: some View {
        
        NavigationView{
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
   
        
                
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
                .padding(.top, 20)
                .padding(.horizontal, 30)
            
         
            GeometryReader(content: { geometry in
                VStack{
                HStack{
                   
                    
                    NavigationLink(
                        destination: AccountView(),
                        isActive: $accountSegue,
                        label: {
                            Button(action: {
                                print("Portfolio")
                                accountSegue.toggle()
                            }, label: {
                                DashboardButtonView(title: "My Portfolio", imageName: "folder", size: geometry.size.height)
                            })
                        })
                  
                    
                    
                    
                    Button(action: {
                        print("My Task")
                    }, label: {
                        DashboardButtonView(title: "My My Task", imageName: "task", size: geometry.size.height)
                    })
                }
                    
                HStack{
                    
                    Button(action: {
                        print("Public Map")
                    }, label: {
                        DashboardButtonView(title: "Public Map", imageName: "map", size: geometry.size.height)
                    })
                    
                    Button(action: {
                        print("DRONE")
                    }, label: {
                        DashboardButtonView(title: "My Drones", imageName: "drone", size: geometry.size.height)
                    })
                }
                    
                HStack{
                    
                    Button(action: {
                        print("Capture")
                    }, label: {
                        DashboardButtonView(title: "Capture", imageName: "capture", size: geometry.size.height)
                    })
                    
                    Button(action: {
                        print("My Account")
                    }, label: {
                        DashboardButtonView(title: "My Accout", imageName: "account", size: geometry.size.height)
                    })
                }
                    
                    
                HStack{
                    
                    Button(action: {
                        print("Social")
                    }, label: {
                        DashboardButtonView(title: "Social Media", imageName: "social", size: geometry.size.height)
                    })
                    
                    Button(action: {
                        print("Settings")
                    }, label: {
                        DashboardButtonView(title: "Settings", imageName: "setting", size: geometry.size.height)
                    })
                }
                    
            }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
                
                

            })
            .padding()
            
           
            
            
            
                Spacer()
         
         
            
  
        }// VSTACK END
        
        .background(
            Image("background_image")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .scaledToFill()
        )
        .navigationBarHidden(true)
        
    }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OptionView()
            .previewDevice("iPhone 8")
        
        OptionView()
            .previewDevice("iPhone 11")
    }
}

struct DashboardButtonView: View {
    
    var title: String
    var imageName: String
    var size: CGFloat
    var body: some View {
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            Text(title.uppercased())
                .foregroundColor(Color(#colorLiteral(red: 0.4045907259, green: 0.818123877, blue: 1, alpha: 1)))
                .font(.footnote)
            
            
        }.frame(width: size * 0.25, height: size *
                    0.25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            
            Color(#colorLiteral(red: 0.02343148366, green: 0.05019742996, blue: 0.1226776615, alpha: 1))
                .opacity(0.9)
            )
        .border(Color.gray)
    }
}
