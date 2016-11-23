import UIKit

class DataSource: NSObject, SourceType {
    var dataObject: DataType = Hand()
    var conditionForAdding: Bool {
        return false
    }
    
    init<T: DataType>(dataObject: T) {
        self.dataObject = dataObject
    }
    
    func addItemTo(tableView: UITableView) {
        if conditionForAdding {
            dataObject = dataObject.addNewItem(at: 0)
            insertTopRow(in: tableView)
        }
    }
}

//MARK: - UITableViewDataSource
extension DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.numberOfItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        fatalError("this method must be override")
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            dataObject = dataObject.deleteItem(at: indexPath.row)
            deleteRow(at: indexPath, from: tableView)
        }
    }
}
