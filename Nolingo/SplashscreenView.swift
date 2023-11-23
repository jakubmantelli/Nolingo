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
            
            
            
            NavigationView {
            ZStack {
                Color(red: 0.47, green: 0.78, blue: 0.00)
                    .ignoresSafeArea()
                    
                    VStack {
                        
                    Image("duologo")
                            .resizable()
                            .scaledToFit()
                         
                            .frame(width: 250, height: 250)
                      
                        
                        Text("nolingo")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(.white)
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
