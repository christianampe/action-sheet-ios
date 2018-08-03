//
//  FlatActionSheetDataSource.swift
//  FlatActionSheet
//
//  Created by Ampe on 8/1/18.
//

import Foundation

// MARK: - Data Source For Flat Action Sheet
public protocol FlatActionSheetDataSource {
    
    // MARK: UI Components
    var tableView: UITableView! { get set }
    
    // MARK: Properties
    var actions: [FlatActionSheetAction] { get }
    var cellHeight: CGFloat { get }
    
    // MARK: Mutating Methods
    func addAction(_ action: FlatActionSheetAction)
    
    // MARK: Helper Methods
    func action(for index: IndexPath) -> FlatActionSheetAction?
    func tableViewHeight() -> CGFloat
}

// MARK: - Default Implementations
public extension FlatActionSheetDataSource {
    func action(for index: IndexPath) -> FlatActionSheetAction? {
        
        guard actions.count >= index.row + 1 else {
            
            return nil
        }
        
        return actions[index.row]
    }
    
    func tableViewHeight() -> CGFloat {
        var bottomSafeSpaceHeight: CGFloat = 0
        
        if #available(iOS 11.0, *) {
            bottomSafeSpaceHeight = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
        }
        
        return CGFloat(actions.count) * cellHeight + bottomSafeSpaceHeight
    }
}
