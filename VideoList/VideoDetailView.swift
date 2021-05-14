//
//  VideoDetailView.swift
//  VideoList
//
//  Created by Janitha Katukenda on 2021-05-14.
//

import SwiftUI

struct VideoDetailView: View {
    
    var video: Video
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            
            Text(video.description)
                .font(.body)
                .padding()
                .lineLimit(10)
            
            Spacer()
            
            Link(destination: video.url, label: {
                StanderdButton(buttonName: "Watch Now")
            })
            
        }
        
        
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

struct StanderdButton: View {
    
    var buttonName: String
    
    var body: some View {
        Text(buttonName)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}
