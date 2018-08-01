//
//  FlatActionSheetAction.swift
//  FlatActionSheet
//
//  Created by Ampe on 8/1/18.
//

import Foundation

public typealias FlatActionSheetActionHandler = ((FlatActionSheetAction) -> Swift.Void?)

open class FlatActionSheetAction {
    public let title: String?
    public let style: FlatActionSheetActionStyle
    public let handler: FlatActionSheetActionHandler?
    
    public init(title: String? = nil,
              style: FlatActionSheetActionStyle,
              handler: FlatActionSheetActionHandler? = nil) {
        
        self.title = title
        self.style = style
        self.handler = handler
    }
}
