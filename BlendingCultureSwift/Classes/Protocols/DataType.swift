protocol DataType {
    var numberOfItems: Int { get }
    func addNewItem(at index: Int) -> Self
    func deleteItem(at index: Int) -> Self
    func moveItem(from index: Int, toIndex: Int) -> Self
}
