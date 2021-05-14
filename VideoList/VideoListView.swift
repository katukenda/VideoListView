//
//  ContentView.swift
//  VideoList
//
//  Created by Janitha Katukenda on 2021-05-14.
//

import SwiftUI

struct VideoListView: View {
  
    var video: [Video] = VideoList.topTen
    
    var body: some View {
    
            NavigationView{
                
                List(video, id: \.id){ video in
                    NavigationLink(
                        destination: VideoDetailView(video: video), label : {
                            VideoCell(video: video)
                           }
                    )
                }
                .navigationTitle("Sean's Top 10")
               
            }
            
        }
    
}

struct VideoCell: View {
    var video: Video
    
    var body: some View{
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            VStack(alignment: .leading, spacing: 5) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
