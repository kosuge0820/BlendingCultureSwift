import UIKit

protocol SourceType: UITableViewDataSource {
    var dataObject: DataType { get set }
    var conditionForAdding: Bool { get }
    func insertTopRow(in tableView: UITableView)
    func deleteRow(at indexPath: IndexPath, from tableView: UITableView)
}

extension SourceType {
    func insertTopRow(in tableView: UITableView) {
        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
    }
    
    func deleteRow(at indexPath: IndexPath, from tableView: UITableView) {
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
}
