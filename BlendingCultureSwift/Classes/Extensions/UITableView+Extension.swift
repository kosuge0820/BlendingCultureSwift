import UIKit

extension UITableView {

    func scrollToTopWithAnimate(_ indexPath: IndexPath) {
        self.scrollToRow(at: indexPath, at: .top, animated: true)
    }
    
    func registerCell<T: UITableViewCell>(_ type: T.Type) {
        let className = type.className
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forCellReuseIdentifier: className)
    }
    
    func registerCells<T: UITableViewCell>(_ types: [T.Type]) {
        types.forEach { registerCell($0) }
    }
    
    func dequeueCell<T: UITableViewCell>(_ type: T.Type, indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
}
