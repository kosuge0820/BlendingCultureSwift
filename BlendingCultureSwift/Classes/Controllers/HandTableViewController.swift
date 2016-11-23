import UIKit

final class HandTableViewController: UITableViewController {
    fileprivate var dataSource = DataSource()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        navigationItem.leftBarButtonItem = editButtonItem
    }

    //MARK: - Action
    @IBAction fileprivate func addNewCard(_ sender: UIBarButtonItem) {
        dataSource.addItemTo(tableView: tableView)
    }
}























//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.registerCell(CardCell.self)
//        navigationItem.leftBarButtonItem = self.editButtonItem
//    }
//    
//    //MARK: - Action
//    @IBAction fileprivate func addNewCard(_ sender: UIBarButtonItem) {
//        if hand.numberOfCards < 5 {
//            hand = hand.addNewsCardAtIndex(index: 0)
//            insertTopRow()
//        }
//    }
//
//    fileprivate func insertTopRow() {
//        tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
//    }
//    
//    fileprivate func deleteRow(at indexPath: IndexPath) {
//        tableView.deleteRows(at: [indexPath], with: .fade)
//    }
//    
//    //MARK: - UITableViewDataSource
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return hand.numberOfCards
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueCell(CardCell.self, indexPath: indexPath)
//        cell.fillWith(card: hand[indexPath.row])
//        return cell
//    }
//    
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        
//        switch editingStyle {
//        case .delete:
//            hand = hand.deleteCardAtIndex(index: indexPath.row)
//            deleteRow(at: indexPath)
//        default:
//            break
//        }
//    }
//    
//    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
//        hand = hand.moveCard(fromIndex: sourceIndexPath.item, toIndex: destinationIndexPath.row)
//    }
//}
