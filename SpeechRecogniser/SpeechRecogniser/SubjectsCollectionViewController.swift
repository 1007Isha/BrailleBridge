import UIKit

class SubjectsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var labelShowed: UINavigationItem!
    @IBOutlet weak var searchBar: UISearchBar! // Outlet for the search bar
    @IBOutlet weak var collectionView: UICollectionView!
    var selectedClass: String?
    var subjects = ["Math", "Science", "History", "English", "Art", "Music", "Physical Education", "Communication"]
    var filteredSubjects: [String] = [] // Array to store filtered subjects
    
    // Define an array of colors for cells
    let cellColors: [UIColor] = [
        UIColor.systemRed,
        UIColor.systemBlue,
        UIColor.systemGreen,
        UIColor.systemOrange,
        UIColor.systemPink,
        UIColor.systemTeal,
        UIColor.systemYellow,
        UIColor.systemPurple
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure collection view
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
        
        // Set up the search bar
        searchBar.delegate = self
    }

    // MARK: - UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if isSearching {
            return filteredSubjects.count
        } else {
            return subjects.count
        }
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SubjectCell", for: indexPath) as! SubjectCell
        let subject: String
        if isSearching {
            subject = filteredSubjects[indexPath.item]
        } else {
            subject = subjects[indexPath.item]
        }
        cell.titleLabel.text = subject
        
        // Set background color for the cell based on index
        cell.backgroundColor = cellColors[indexPath.item % cellColors.count]
        
        return cell
    }

    // MARK: - UICollectionViewDelegate

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // Handle selection if needed
    }

    // MARK: - UICollectionViewDelegateFlowLayout

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Adjust cell size as needed
        let totalWidth = collectionView.bounds.width
        let numberOfColumns: CGFloat = 3
        let cellWidth = (totalWidth - (numberOfColumns - 15) * 10) / numberOfColumns // Adjust spacing between cells (10) as needed
        let cellHeight: CGFloat = 120 // Adjust height as needed
        return CGSize(width: cellWidth, height: cellHeight)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10 // Adjust spacing between cells horizontally
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) // Adjust spacing as needed
    }
    
    // MARK: - ChooseCollectionDelegate
    
    func didSelectClass(_ selectedClass: String) {
        labelShowed.title = selectedClass
    }
    
    // MARK: - Navigation
    
}

// MARK: - UISearchBarDelegate
extension SubjectsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredSubjects = subjects.filter { $0.lowercased().contains(searchText.lowercased()) }
        collectionView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.resignFirstResponder()
        filteredSubjects.removeAll()
        collectionView.reloadData()
    }
    
    var isSearching: Bool {
        return !searchBar.text!.isEmpty
    }
}

