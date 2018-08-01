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
    
    // MARK: Mutating Methods
    func addAction(_ action: FlatActionSheetAction)
    
    // MARK: Helper Methods
    func action(for index: IndexPath) -> FlatActionSheetAction?
}

// MARK: - Default Implementations
public extension FlatActionSheetDataSource {
    func action(for index: IndexPath) -> FlatActionSheetAction? {
        
        guard actions.count >= index.row + 1 else {
            
            return nil
        }
        
        return actions[index.row]
    }
}
