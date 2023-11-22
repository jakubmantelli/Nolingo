    //
    //  SplashscreenView.swift
    //  Nolingo
    //
    //  Created by Jakub Mantelli on 15/11/23.
    //


    import SwiftUI

    struct SplashScreenView: View {
        @State private var isActive: Bool = false

        var body: some View {
            
            
            
            
            
            ZStack {
                Color(.blue)
                NavigationView {
                    
                    VStack {
                        
                    Image("duologo")
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 20)
                      
                        
                        Text("nolingo")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor((Color(red: 0.36, green: 0.84, blue: 0.01)))
                            .padding(.top, 5)
                        
                          

                       
                        
                        
                    }
                        
                        
                        .onAppear {
                        
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation(.easeInOut(duration: 2)) {
                                    self.isActive = true
                                }
                            }
                        }
                      
                        .background(
                            NavigationLink(
                                destination: ContentView(), // Replace ContentView() with the destination you want to navigate to
                                isActive: $isActive,
                                label: {
                                    EmptyView()
                                }
                            )
                        )  .navigationBarHidden(true)
                      
                }
            }
            
            
                                
        }
    }


    #Preview {
        SplashScreenView()
    }
