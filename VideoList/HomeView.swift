//
//  LoaderView.swift
//  VideoList
//
//  Created by Janitha Katukenda on 2021-05-14.
//

import SwiftUI
struct HomeView: View {
   @State private var isLoading = false
    
    var body: some View {
        
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VideoListView()
                .redacted(reason: isLoading ? .placeholder: [])
            
            if isLoading {
                
                ZStack{
                    Color(.systemBackground)
                        .ignoresSafeArea()
                        .opacity(0.8)                }
                
                ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .red))
                .scaleEffect(3)
            }
        }
        
        .onAppear { startFakeNetworkCall() }
    }
    
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ){
            isLoading = false
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
      
    }
}
