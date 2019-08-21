//
//  RightThirdCalculation.swift
//  Rectangle
//
//  Created by Ryan Hanson on 7/26/19.
//  Copyright © 2019 Ryan Hanson. All rights reserved.
//

import Foundation

class LastThirdCalculation: WindowCalculation {
    
    func calculateRect(_ windowRect: CGRect, visibleFrameOfScreen: CGRect, action: WindowAction) -> CGRect? {
        
        return isLandscape(visibleFrameOfScreen)
            ? rightThird(visibleFrameOfScreen)
            : bottomThird(visibleFrameOfScreen)
    }
    
    private func rightThird(_ visibleFrameOfScreen: CGRect) -> CGRect {
        
        var oneThirdRect = visibleFrameOfScreen
        oneThirdRect.size.width = floor(visibleFrameOfScreen.width / 3.0)
        oneThirdRect.origin.x = visibleFrameOfScreen.origin.x + visibleFrameOfScreen.width - oneThirdRect.width
        return oneThirdRect
    }
    
    private func bottomThird(_ visibleFrameOfScreen: CGRect) -> CGRect {
        
        var oneThirdRect = visibleFrameOfScreen
        oneThirdRect.size.height = floor(visibleFrameOfScreen.height / 3.0)
        return oneThirdRect
    }
}
