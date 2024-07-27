import UIKit

class OrderByTableViewController: UITableViewController {
    weak var delegate: OrderByTableViewControllerDelegate?
    let sortingOptions: [SortingOption] = SortingOption.allCases
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: String(describing: UITableViewCell.self))
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sortingOptions.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: UITableViewCell.self))
        cell?.textLabel?.text = sortingOptions[indexPath.row].rawValue
        return cell ?? UITableViewCell()
    } 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedOption = sortingOptions[indexPath.row]
        delegate?.orderByTableViewController(self, didSelectOption: selectedOption)
        dismiss(animated: true)
    }

}
