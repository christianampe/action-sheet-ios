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
    public let dropShadowConfig: FlatActionSheetDropShadowConfig
    
    public init(cellHeight: CGFloat,
                backgroundColor: UIColor,
                backgroundAlphaValue: CGFloat,
                animationDuration: TimeInterval,
                shouldShowDropShadow: Bool,
                dropShadowConfig: FlatActionSheetDropShadowConfig) {
        
        self.cellHeight = cellHeight
        self.backgroundColor = backgroundColor
        self.backgroundAlphaValue = backgroundAlphaValue
        self.animationDuration = animationDuration
        self.shouldShowDropShadow = shouldShowDropShadow
        self.dropShadowConfig = dropShadowConfig
    }
}

extension FlatActionSheetConfig {
    public static let `default` = FlatActionSheetConfig(cellHeight: 50.0,
                                                        backgroundColor: .black,
                                                        backgroundAlphaValue: 0.5,
                                                        animationDuration: 0.3,
                                                        shouldShowDropShadow: false,
                                                        dropShadowConfig: .default)
}

public struct FlatActionSheetDropShadowConfig {
    public let color: UIColor
    public let offset: CGSize
    public let radius: CGFloat
    public let opacity: Float
    
    public init(color: UIColor,
                offset: CGSize,
                radius: CGFloat,
                opacity: Float) {
        
        self.color = color
        self.offset = offset
        self.radius = radius
        self.opacity = opacity
    }
}

extension FlatActionSheetDropShadowConfig {
    public static let `default` = FlatActionSheetDropShadowConfig(color: .black,
                                                                  offset: CGSize(width: 0,
                                                                                 height: -5),
                                                                  radius: 3,
                                                                  opacity: 0.8)
}
