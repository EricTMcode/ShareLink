//
//  WineView.swift
//  ShareLink
//
//  Created by Eric on 05/10/2023.
//

import SwiftUI

struct WineView: View {
    let wine = Wine.sample
    @State private var renderedImage: Image?
    
    var body: some View {
        NavigationStack {
            WineLabel(wine: wine)
                .onAppear {
                    let renderer = ImageRenderer(content: WineLabel(wine: wine))
                    renderer.scale = 3
                    if let image = renderer.cgImage {
                        renderedImage = Image(decorative: image, scale: 1.0)
                    }
                }
            if let renderedImage {
                ShareLink("Share Label as Image",
                          item: renderedImage,
                          subject: Text(wine.winery),
                          message: Text("Enjoy the Wine"),
                          preview: SharePreview(wine.label, image: renderedImage))
            }
            Spacer()
        }
        .navigationTitle(wine.winery)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                ShareLink(item: wine.labelImage,
                          subject: Text("Wine Recommendation"),
                          message: Text(wine.description),
                          preview: SharePreview(Text("\(wine.name) \(wine.variety)"),
                                                image: wine.labelImage))
            }
        }
    }
}


struct WineLabel: View {
    let wine: Wine
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(wine.variety)
                .font(.largeTitle)
                .bold()
            
            Text(wine.name)
                .font(.title)
            
            Text("\(wine.flag) \(wine.region)")
                .italic()
            
            Text(wine.localPrice)
            
            Text("⭐️ \(wine.rating)")
            wine.labelImage
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(width: 250)
        }
    }
}

#Preview {
    NavigationStack {
        WineView()
    }
}
