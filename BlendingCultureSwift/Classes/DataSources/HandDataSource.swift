import UIKit

class HandDataSource: DataSource {
    
    init(dataObject: Hand) {
        super.init(dataObject: dataObject)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueCell(CardCell.self, indexPath: indexPath)
        
        guard let hand = dataObject as? Hand else {
            fatalError("could not create cardcell")
        }
        
        cell.fillWith(card: hand[indexPath.row])
        return cell
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }
}



