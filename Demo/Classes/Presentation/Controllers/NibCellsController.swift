import UIKit
import TableKit

class NibCellsController: UITableViewController {
    
    var tableDirector: TableDirector!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Nib cells"
        
        tableDirector = TableDirector(tableView: tableView)
        
        let numbers = [1000, 2000, 3000, 4000, 5000]

        let rows = numbers.map {
            TableRow<NibTableViewCell>(item: $0)
        }
        
        let section = TableSection(rows: rows, isCollapsible: true)
        
        tableDirector.append(section: section)
    }
}
