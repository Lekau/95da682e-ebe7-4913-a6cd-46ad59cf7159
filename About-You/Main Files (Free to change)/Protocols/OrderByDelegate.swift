//
//  OrderByDelegate.swift
//  About-You
//
//  Created by Lekau on 2024/07/27.
//

import Foundation

protocol OrderByTableViewControllerDelegate: AnyObject {
  func orderByTableViewController(_ controller: OrderByTableViewController, didSelectOption option: SortingOption)
}
