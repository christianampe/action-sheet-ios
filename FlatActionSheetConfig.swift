//
//  FlatActionSheetConfig.swift
//  FlatActionSheet
//
//  Created by Ampe on 8/2/18.
//

import Foundation

public struct FlatActionSheetConfig {
    public let cellHeight: CGFloat
    public let backgroundColor: UIColor
    public let backgroundAlphaValue: CGFloat
    public let animationDuration: TimeInterval
    public let shouldShowDropShadow: Bool
    
    public init(cellHeight: CGFloat,
                backgroundColor: UIColor,
                backgroundAlphaValue: CGFloat,
                animationDuration: TimeInterval,
                shouldShowDropShadow: Bool) {
        
        self.cellHeight = cellHeight
        self.backgroundColor = backgroundColor
        self.backgroundAlphaValue = backgroundAlphaValue
        self.animationDuration = animationDuration
        self.shouldShowDropShadow = shouldShowDropShadow
    }
}

extension FlatActionSheetConfig {
    public static let `default` = FlatActionSheetConfig(cellHeight: 50.0,
                                                        backgroundColor: .black,
                                                        backgroundAlphaValue: 0.5,
                                                        animationDuration: 0.3,
                                                        shouldShowDropShadow: false)
}
