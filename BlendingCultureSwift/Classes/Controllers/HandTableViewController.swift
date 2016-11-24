import UIKit

final class HandTableViewController: UITableViewController {
    fileprivate var dataSource = HandDataSource(dataObject: Hand())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.registerCell(CardCell.self)
        tableView.dataSource = dataSource
        navigationItem.leftBarButtonItem = editButtonItem
    }

    //MARK: - Action
    @IBAction fileprivate func addNewCard(_ sender: UIBarButtonItem) {
        dataSource.addItemTo(tableView: tableView)
    }
}









