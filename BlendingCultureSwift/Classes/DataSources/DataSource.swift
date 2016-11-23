import UIKit

class DataSource: NSObject {
    fileprivate var hand = Hand()
    
    func addItemTo(tableView: UITableView) {}
    
}

//MARK: - UITableViewDataSource
extension DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {}
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {}
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {}
    func insertTopRow(in tableView: UITableView) {}
    func deleteRow(at indexPath: IndexPath, from tableView: UITableView) {}
}











