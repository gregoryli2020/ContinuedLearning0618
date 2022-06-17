//
//  RotationGestures.swift
//  ContinuedLearning0618
//
//  Created by Gregory Li on 2022/6/18.
//

import SwiftUI

struct RotationGestures: View {
    @State var angle: Angle = Angle(degrees: 0)
    
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding(50)
            .background(Color.blue.cornerRadius(10))
            .rotationEffect(angle)
            // 按下option键，才能旋转；
            .gesture(
                RotationGesture()
                    .onChanged { value in
                        angle = value
                    }
                    .onEnded { value in
                        withAnimation(.spring()) {
                            angle = Angle(degrees: 0)
                        }
                    }
            )
    }
}

struct RotationGestures_Previews: PreviewProvider {
    static var previews: some View {
        RotationGestures()
    }
}
